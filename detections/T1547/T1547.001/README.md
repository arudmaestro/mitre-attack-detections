# T1547.001 - Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/001/
- **Platforms:** Windows

## Summary
Adversaries may achieve persistence by adding a program to a startup folder or referencing it with a Registry run key.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Run Key Set to a Script Host or a File in Temp or Public | [sigma](sigma/registry_set_win_run_key_suspicious_command.yml) | [raw](splunk/registry_set_win_run_key_suspicious_command.spl), [CIM](splunk/registry_set_win_run_key_suspicious_command_cim.spl) | [MDE](sentinel/registry_set_win_run_key_suspicious_command.kql) | medium | experimental |
| Startup Folder Location Changed | [sigma](sigma/registry_set_win_startup_folder_redirected.yml) | [raw](splunk/registry_set_win_startup_folder_redirected.spl), [CIM](splunk/registry_set_win_startup_folder_redirected_cim.spl) | [MDE](sentinel/registry_set_win_startup_folder_redirected.kql) | high | experimental |
| File Written to the Startup Folder from the Command Line | [sigma](sigma/proc_creation_win_startup_folder_write.yml) | [raw](splunk/proc_creation_win_startup_folder_write.spl), [CIM](splunk/proc_creation_win_startup_folder_write_cim.spl) | [MDE](sentinel/proc_creation_win_startup_folder_write.kql), [SecurityEvent](sentinel/proc_creation_win_startup_folder_write_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Installers using RunOnce to finish setup with a script after reboot
- Folder redirection policies
- Login scripts and installers that place shortcuts in the Startup folder

## Limitations
Run values pointing to ordinary executables in AppData are common for legitimate per-user apps and are not flagged; baseline Run keys per host to find new entries. Files dropped into the Startup folder by programs directly need file events (Sysmon EID 11 / DeviceFileEvents).

## Testing
See [tests/](tests/).
