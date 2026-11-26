# T1574.009 - Hijack Execution Flow: Path Interception by Unquoted Path

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/009/
- **Platforms:** Windows

## Summary
Adversaries may execute their own malicious payloads by hijacking vulnerable file path references.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Program Started from an Unquoted Service Path Hijack Location | [sigma](sigma/proc_creation_win_unquoted_path_hijack_binary.yml) | [raw](splunk/proc_creation_win_unquoted_path_hijack_binary.spl), [CIM](splunk/proc_creation_win_unquoted_path_hijack_binary_cim.spl) | [MDE](sentinel/proc_creation_win_unquoted_path_hijack_binary.kql), [SecurityEvent](sentinel/proc_creation_win_unquoted_path_hijack_binary_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- None expected

## Limitations
Other hijack points depend on the vulnerable path (e.g. C:\Vendor.exe for C:\Vendor App\svc.exe); list unquoted service paths with: Get-CimInstance Win32_Service | Where-Object { $_.PathName -notmatch '^"' -and $_.PathName -match ' ' } and quote them.

## Testing
See [tests/](tests/).
