# T1218.014 - System Binary Proxy Execution: MMC

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/014/
- **Platforms:** Windows

## Summary
Adversaries may abuse mmc.exe to proxy execution of malicious .msc files.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| MMC Opening a Console File from a User-Writable Folder | [sigma](sigma/proc_creation_win_mmc_msc_from_user_path.yml) | [raw](splunk/proc_creation_win_mmc_msc_from_user_path.spl), [CIM](splunk/proc_creation_win_mmc_msc_from_user_path_cim.spl) | [MDE](sentinel/proc_creation_win_mmc_msc_from_user_path.kql), [SecurityEvent](sentinel/proc_creation_win_mmc_msc_from_user_path_securityevent.kql) | medium | experimental |
| MMC Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_mmc_spawns_shell.yml) | [raw](splunk/proc_creation_win_mmc_spawns_shell.spl), [CIM](splunk/proc_creation_win_mmc_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_mmc_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_mmc_spawns_shell_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators opening saved custom consoles from their profile
- Custom consoles with task items that start command-line tools

## Testing
See [tests/](tests/).
