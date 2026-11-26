# T1218.010 - System Binary Proxy Execution: Regsvr32

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/010/
- **Platforms:** Windows

## Summary
Adversaries may abuse Regsvr32.exe to proxy execution of malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Regsvr32 Loading a Scriptlet (Squiblydoo) | [sigma](sigma/proc_creation_win_regsvr32_scriptlet.yml) | [raw](splunk/proc_creation_win_regsvr32_scriptlet.spl), [CIM](splunk/proc_creation_win_regsvr32_scriptlet_cim.spl) | [MDE](sentinel/proc_creation_win_regsvr32_scriptlet.kql), [SecurityEvent](sentinel/proc_creation_win_regsvr32_scriptlet_securityevent.kql) | high | experimental |
| Regsvr32 Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_regsvr32_spawns_shell.yml) | [raw](splunk/proc_creation_win_regsvr32_spawns_shell.spl), [CIM](splunk/proc_creation_win_regsvr32_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_regsvr32_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_regsvr32_spawns_shell_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- None expected
- Installers whose COM registration runs setup commands

## Testing
See [tests/](tests/).
