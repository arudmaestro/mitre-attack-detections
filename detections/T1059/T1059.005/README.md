# T1059.005 - Command and Scripting Interpreter: Visual Basic

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/005/
- **Platforms:** Windows

## Summary
Adversaries abuse Visual Basic and VBScript to execute payloads. Scripts launched from user-writable folders are typical of phishing and malware droppers.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| VBScript Executed from User-Writable Path | [sigma](sigma/proc_creation_win_wscript_vbs_from_user_path.yml) | [raw Sysmon](splunk/proc_creation_win_wscript_vbs_from_user_path.spl), [CIM](splunk/proc_creation_win_wscript_vbs_from_user_path_cim.spl) | [MDE](sentinel/proc_creation_win_wscript_vbs_from_user_path.kql), [SecurityEvent](sentinel/proc_creation_win_wscript_vbs_from_user_path_securityevent.kql) | experimental |

## Required data sources
Sysmon EID 1 (Splunk raw search) or CIM `Endpoint.Processes`; Sentinel `DeviceProcessEvents` (MDE) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Login scripts or admin scripts staged in Temp or Downloads

## Testing
See [tests/](tests/).
