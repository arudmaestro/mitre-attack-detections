# T1059.003 - Command and Scripting Interpreter: Windows Command Shell

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/003/
- **Platforms:** Windows

## Summary
Adversaries abuse the Windows command shell to run commands and payloads. Office applications spawning cmd.exe is rarely legitimate and usually indicates a malicious macro or document exploit.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| Windows Command Shell Spawned by Office Application | [sigma](sigma/proc_creation_win_office_spawn_cmd.yml) | [raw Sysmon](splunk/proc_creation_win_office_spawn_cmd.spl), [CIM](splunk/proc_creation_win_office_spawn_cmd_cim.spl) | [MDE](sentinel/proc_creation_win_office_spawn_cmd.kql), [SecurityEvent](sentinel/proc_creation_win_office_spawn_cmd_securityevent.kql) | experimental |

## Required data sources
Sysmon EID 1 (Splunk raw search) or CIM `Endpoint.Processes`; Sentinel `DeviceProcessEvents` (MDE) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legitimate Office macros or add-ins that call cmd.exe

## Testing
See [tests/](tests/).
