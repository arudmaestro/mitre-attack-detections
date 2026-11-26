# Conventions

## Folders
- Technique folder: `detections/T1059/`; sub-technique nested inside: `detections/T1059/T1059.001/`.
- Technique-level folder holds rules that apply to the parent technique as a whole.
- A technique can belong to several tactics, so tactics are tracked in rule tags, not in the folder tree.
- **Guidance only:** when no reliable log-based rule is possible (network payload analysis, file analysis, attacker-side activity), the folder has only a `README.md` marked `Status: guidance only` explaining why and how to detect it instead. The tracker shows these as "Guidance only".

## File naming
`<category>_<platform>_<short_description>` in lower snake case (e.g. `proc_creation_win_...`, `net_connection_win_...`, `registry_set_win_...`, `win_security_...`, `aws_cloudtrail_...`). The same base name links all versions of one detection.

| Log source | `splunk/` | `sentinel/` |
|------------|-----------|-------------|
| Windows process creation | `<base>.spl` (raw Sysmon EID 1), `<base>_cim.spl` (CIM) | `<base>.kql` (DeviceProcessEvents), `<base>_securityevent.kql` (4688) |
| Windows network connection | `<base>.spl` (raw Sysmon EID 3) | `<base>.kql` (DeviceNetworkEvents) |
| Windows registry value set | `<base>.spl` (raw Sysmon EID 13), `<base>_cim.spl` (CIM `Endpoint.Registry`, only when the rule has no `Image` condition) | `<base>.kql` (DeviceRegistryEvents) |
| Windows Security log | `<base>.spl` (raw Security log) | `<base>.kql` (SecurityEvent) |
| Linux / macOS process creation | `<base>.spl` (CIM) | `<base>.kql` (DeviceProcessEvents) |
| AWS CloudTrail | `<base>.spl` (aws:cloudtrail) | `<base>.kql` (AWSCloudTrail) |

`<base>.spl` and `<base>.kql` are always the primary query; suffixed files are alternatives for other data sources.

## Required metadata
- Sigma: `id` (UUID, never changes once published), `title`, `status`, `description`, `references`, `author`, `date`, `tags`, `logsource`, `detection`, `falsepositives`, `level`.
- Tags use the **current** ATT&CK tactic short names with hyphens (e.g. `attack.credential-access`, `attack.stealth` - ATT&CK v20 replaced Defense Evasion with Stealth and Defense Impairment) plus `attack.tXXXX[.xxx]`. The technique tag must match the folder.
- Splunk/Sentinel files carry a header comment with title, ATT&CK ID, Sigma id, data source, severity, false positives and suggested schedule; Sentinel headers also list entity mapping.

## How queries are produced
1. Write the Sigma rule by hand (the source of truth).
2. Convert it with pySigma (`splunk_windows`, `splunk_cim` data model, `microsoft_xdr`, `azure_monitor` pipelines).
3. A build step adds the index/source prefix, header, output columns, and fixes known converter issues:
   - Numeric KQL fields (`RemotePort`, `LocalPort`, `EventID`) compared as numbers, not text.
   - Network rules also match inbound connections in Defender (`LocalPort` + `InboundConnectionAccepted`).
   - CIM searches use `process_name` instead of `process_path` where possible; no ESCU macros.
   - `SecurityEvent` process queries get `EventID == 4688`; Security-log rules are pinned to the `SecurityEvent` table.
   - Network rules with `Initiated: 'true'` become `ActionType != "InboundConnectionAccepted"` in Defender (the converter drops `Initiated`).
   - CIM searches keep `process_path` when a rule filters on the full path, so a missing path field cannot turn the filter off.
   - Registry rules are converted as described below.
   - A `SecurityEvent` variant is only built when the rule uses fields that 4688 has (no `OriginalFileName`).

**Threshold rules** (e.g. brute force) are written as a Sigma file with two documents: a base rule (with `name`) and a Sigma `correlation` (`event_count` or `value_count`, `group-by`, `timespan`, `condition`). Splunk output comes from pySigma; the Kusto backend has no correlation support, so the build step generates the KQL `summarize ... | where count >= N` itself, and the validator checks that the threshold, window and group-by fields appear in both queries. Currently supported for Windows Security log rules.

**Registry rules** (`category: registry_set`) - pySigma's Defender mapping turns `TargetObject` into `RegistryKey`, which excludes the value name, so the build step converts these rules itself:
- Allowed fields: `TargetObject` (`contains` / `endswith` only), `Details`, `Image`. Other fields or modifiers fail the build.
- `TargetObject` values start **after the hive** (`'\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\'`, not `HKLM\...`). Sysmon writes `HKLM\` / `HKU\<SID>\`, Defender writes `HKEY_LOCAL_MACHINE\` / `HKEY_CURRENT_USER\<SID>\`, so a hive prefix would match only one of them. The build rejects values starting with a hive.
- Defender: `DeviceRegistryEvents` with `ActionType == "RegistryValueSet"`, and `TargetObject` defined as `strcat(RegistryKey, "\\", RegistryValueName)` so the Sigma path matches as written. `Image` maps to `InitiatingProcessFolderPath`, `Details` to `RegistryValueData`.
- DWORD data is written exactly as Sysmon logs it, `Details: 'DWORD (0x00000001)'`. The build converts it to `"1"` for Defender (which logs DWORD data as decimal) and `"0x00000001"` for CIM (the Sysmon add-on's `registry_value_data`). Partial DWORD matches are rejected.
- CIM: `TargetObject` maps to `Registry.registry_path` (key + value name). `Endpoint.Registry` has no process path field, so rules with an `Image` condition get no CIM variant.
- Default values: Sysmon names them `(Default)`, Defender uses an empty value name, so match the key with `contains '\Key\'` instead; the build rejects `(Default)`. An empty value (`Details: '(Empty)'`) also matches Defender's empty string.
- Only value-set events (Sysmon EID 13) are supported; key creation/deletion (EID 12) and rename (EID 14) are not yet.

**Kerberos fields in Sentinel** - `TicketEncryptionType`, `TicketOptions` and `PreAuthType` (4768/4769) are not `SecurityEvent` columns; they exist only in the `EventData` XML. Write them in Sigma as usual (`PreAuthType` as a number); the Sentinel query extracts them with `extend X = extract(@'<Data Name="X">([^<]*)</Data>', 1, EventData)` (`toint()` for `PreAuthType`) before filtering, and validation checks that every use is extracted.

Do not hand-edit generated queries; change the Sigma rule and rebuild.

## Query rules
### Splunk
- Comments use triple backticks: ```` ```comment``` ````.
- Raw searches name the `index`, `source` and `EventCode`. Defaults: `index=sysmon`, `index=wineventlog`, `index=aws`; change them to match your environment. `source=` is used instead of `sourcetype=` because it is the same in old and new versions of the Sysmon and Windows add-ons.
- **Operator precedence:** in Splunk `OR` binds tighter than the implicit `AND`, so `A B OR C D` means `A AND (B OR C) AND D`. Keep this in mind when editing.
- CIM searches use `tstats` on `Endpoint.Processes` with `summariesonly=false` (works without acceleration).
- Use only core SPL. No ESCU macros such as `drop_dm_object_name` or `security_content_ctime`.

### Sentinel (KQL)
- Use `contains` / `endswith` / `startswith` / `=~` / `in~` for strings. Do not use `has` for strings with spaces or punctuation; `has` matches whole terms only.
- Escape backslashes in strings: `"\\AppData\\"`.
- Keep the `TimeGenerated > ago(1d)` line for hunting; the analytics rule lookback applies when scheduled.

## Validation (must pass before a detection is marked Done)
- `sigma check` reports 0 errors and 0 issues (its ATT&CK tag list is outdated, so tags are checked separately).
- Tags are checked against MITRE's current ATT&CK data: technique exists, matches the folder, tactics belong to it.
- Every value in the Sigma rule appears in every generated query (catches dropped conditions).
- Every field used exists in that data source's schema.
- Balanced quotes and brackets, no macros, no numeric-as-string or `has` misuse.
- Final check: run the emulation script in `tests/` in a lab and confirm the query returns the event.

## Status values
`experimental` → `test` → `stable` (as in Sigma). Deprecated rules are marked `deprecated`, not deleted.
