# T1556.001 - Modify Authentication Process: Domain Controller Authentication

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/001/
- **Platforms:** Windows

## Summary
Adversaries may patch the authentication process on a domain controller to bypass the typical authentication mechanisms and enable access to accounts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Mimikatz Skeleton Key Command | [sigma](sigma/proc_creation_win_mimikatz_skeleton_key.yml) | [raw](splunk/proc_creation_win_mimikatz_skeleton_key.spl), [CIM](splunk/proc_creation_win_mimikatz_skeleton_key_cim.spl) | [MDE](sentinel/proc_creation_win_mimikatz_skeleton_key.kql), [SecurityEvent](sentinel/proc_creation_win_mimikatz_skeleton_key_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
Skeleton key loaded in memory leaves no command line; enable LSASS protection (RunAsPPL) on domain controllers, watch for the mimidrv driver (7045 / Sysmon 6) and for LSASS process access on DCs. Defender for Identity detects skeleton key use from the encryption downgrade it causes.

## Testing
See [tests/](tests/).
