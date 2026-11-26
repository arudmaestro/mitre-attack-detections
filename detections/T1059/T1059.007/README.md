# T1059.007 - Command and Scripting Interpreter: JavaScript

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/007/
- **Platforms:** Windows

## Summary
Adversaries abuse JavaScript (JScript via Windows Script Host) to execute payloads. Malware droppers often deliver .js files that run from user-writable folders.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| JScript Executed from User-Writable Path | [sigma](sigma/proc_creation_win_wscript_js_from_user_path.yml) | [raw Sysmon](splunk/proc_creation_win_wscript_js_from_user_path.spl), [CIM](splunk/proc_creation_win_wscript_js_from_user_path_cim.spl) | [MDE](sentinel/proc_creation_win_wscript_js_from_user_path.kql), [SecurityEvent](sentinel/proc_creation_win_wscript_js_from_user_path_securityevent.kql) | experimental |

## Required data sources
Sysmon EID 1 (Splunk raw search) or CIM `Endpoint.Processes`; Sentinel `DeviceProcessEvents` (MDE) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legitimate scripts in Temp or Downloads
- Command lines containing .json paths

## Testing
See [tests/](tests/).
