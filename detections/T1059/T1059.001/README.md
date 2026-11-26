# T1059.001 - Command and Scripting Interpreter: PowerShell

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/001/
- **Platforms:** Windows

## Summary
Adversaries abuse PowerShell to execute commands and payloads. Encoded commands are commonly used to hide intent.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| PowerShell Encoded Command Execution | [sigma](sigma/proc_creation_win_powershell_encoded_command.yml) | [raw Sysmon](splunk/proc_creation_win_powershell_encoded_command.spl), [CIM](splunk/proc_creation_win_powershell_encoded_command_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_encoded_command.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_encoded_command_securityevent.kql) | experimental |

## Required data sources
Sysmon EID 1 (Splunk raw search) or CIM `Endpoint.Processes`; Sentinel `DeviceProcessEvents` (MDE) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Software deployment and administration tools

## Testing
See [tests/](tests/).
