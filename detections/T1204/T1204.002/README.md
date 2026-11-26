# T1204.002 - User Execution: Malicious File

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1204/002/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary may rely upon a user opening a malicious file in order to gain execution.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Office Application Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_office_spawns_shell.yml) | [raw](splunk/proc_creation_win_office_spawns_shell.spl), [CIM](splunk/proc_creation_win_office_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_office_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_office_spawns_shell_securityevent.kql) | high | experimental |
| Script File Opened from Downloads, Temp or Outlook Attachments | [sigma](sigma/proc_creation_win_script_host_from_user_download.yml) | [raw](splunk/proc_creation_win_script_host_from_user_download.spl), [CIM](splunk/proc_creation_win_script_host_from_user_download_cim.spl) | [MDE](sentinel/proc_creation_win_script_host_from_user_download.kql), [SecurityEvent](sentinel/proc_creation_win_script_host_from_user_download_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Business macros and add-ins that run commands by design (allowlist by command line)
- Installers and login scripts that run VBScript from a temporary folder

## Limitations
Malicious executables opened by users are better found with reputation and SmartScreen/Mark-of-the-Web telemetry (Defender for Endpoint, Sysmon EID 15 for Zone.Identifier). Linux and macOS user execution is not covered here.

## Testing
See [tests/](tests/).
