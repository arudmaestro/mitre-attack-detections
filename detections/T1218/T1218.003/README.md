# T1218.003 - System Binary Proxy Execution: CMSTP

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/003/
- **Platforms:** Windows

## Summary
Adversaries may abuse CMSTP to proxy execution of malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| CMSTP Installing a Profile Silently | [sigma](sigma/proc_creation_win_cmstp_silent_inf.yml) | [raw](splunk/proc_creation_win_cmstp_silent_inf.spl), [CIM](splunk/proc_creation_win_cmstp_silent_inf_cim.spl) | [MDE](sentinel/proc_creation_win_cmstp_silent_inf.kql), [SecurityEvent](sentinel/proc_creation_win_cmstp_silent_inf_securityevent.kql) | medium | experimental |
| CMSTP Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_cmstp_spawns_shell.yml) | [raw](splunk/proc_creation_win_cmstp_spawns_shell.spl), [CIM](splunk/proc_creation_win_cmstp_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_cmstp_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_cmstp_spawns_shell_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- VPN client deployments that install Connection Manager profiles
- Rare: VPN profiles that run setup scripts

## Testing
See [tests/](tests/).
