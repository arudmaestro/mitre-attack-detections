# T1021.006 - Remote Services: Windows Remote Management

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/006/
- **Platforms:** Windows

## Summary
Adversaries may use Valid Accounts to interact with remote systems using Windows Remote Management (WinRM).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Process Spawned by WinRM Remote Shell Host | [sigma](sigma/proc_creation_win_winrm_remote_shell_child.yml) | [raw](splunk/proc_creation_win_winrm_remote_shell_child.spl), [CIM](splunk/proc_creation_win_winrm_remote_shell_child_cim.spl) | [MDE](sentinel/proc_creation_win_winrm_remote_shell_child.kql), [SecurityEvent](sentinel/proc_creation_win_winrm_remote_shell_child_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and management tools using PowerShell remoting

## Limitations
PowerShell commands run inside wsmprovhost.exe itself do not create child processes; enable PowerShell Script Block Logging (4104) on targets. Inbound WinRM logons appear as Security 4624 LogonType 3.

## Testing
See [tests/](tests/).
