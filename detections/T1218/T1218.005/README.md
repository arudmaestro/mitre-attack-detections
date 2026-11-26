# T1218.005 - System Binary Proxy Execution: Mshta

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/005/
- **Platforms:** Windows

## Summary
Adversaries may abuse mshta.exe to proxy execution of malicious .hta files and Javascript or VBScript through a trusted Windows utility.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Mshta Running Inline Script or a Remote HTA | [sigma](sigma/proc_creation_win_mshta_inline_or_remote.yml) | [raw](splunk/proc_creation_win_mshta_inline_or_remote.spl), [CIM](splunk/proc_creation_win_mshta_inline_or_remote_cim.spl) | [MDE](sentinel/proc_creation_win_mshta_inline_or_remote.kql), [SecurityEvent](sentinel/proc_creation_win_mshta_inline_or_remote_securityevent.kql) | high | experimental |
| Mshta Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_mshta_spawns_shell.yml) | [raw](splunk/proc_creation_win_mshta_spawns_shell.spl), [CIM](splunk/proc_creation_win_mshta_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_mshta_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_mshta_spawns_shell_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legacy intranet applications delivered as remote HTA files
- Legacy HTA-based installers and admin tools

## Testing
See [tests/](tests/).
