# T1218.001 - System Binary Proxy Execution: Compiled HTML File

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/001/
- **Platforms:** Windows

## Summary
Adversaries may abuse Compiled HTML files (.chm) to conceal malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| HTML Help (hh.exe) Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_hh_spawns_shell.yml) | [raw](splunk/proc_creation_win_hh_spawns_shell.spl), [CIM](splunk/proc_creation_win_hh_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_hh_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_hh_spawns_shell_securityevent.kql) | high | experimental |
| CHM File Opened from a Download, Temp or Remote Location | [sigma](sigma/proc_creation_win_hh_chm_from_user_path.yml) | [raw](splunk/proc_creation_win_hh_chm_from_user_path.spl), [CIM](splunk/proc_creation_win_hh_chm_from_user_path_cim.spl) | [MDE](sentinel/proc_creation_win_hh_chm_from_user_path.kql), [SecurityEvent](sentinel/proc_creation_win_hh_chm_from_user_path_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Old vendor help files that launch tools (rare)
- Users opening help files shipped with downloaded software

## Testing
See [tests/](tests/).
