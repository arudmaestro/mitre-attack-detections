# T1546.008 - Event Triggered Execution: Accessibility Features

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/008/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence and/or elevate privileges by executing malicious content triggered by accessibility features.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Debugger Set for an Accessibility Program | [sigma](sigma/registry_set_win_accessibility_debugger.yml) | [raw](splunk/registry_set_win_accessibility_debugger.spl), [CIM](splunk/registry_set_win_accessibility_debugger_cim.spl) | [MDE](sentinel/registry_set_win_accessibility_debugger.kql) | high | experimental |
| Accessibility Program Overwritten with copy or move | [sigma](sigma/proc_creation_win_accessibility_binary_replaced.yml) | [raw](splunk/proc_creation_win_accessibility_binary_replaced.spl), [CIM](splunk/proc_creation_win_accessibility_binary_replaced_cim.spl) | [MDE](sentinel/proc_creation_win_accessibility_binary_replaced.kql), [SecurityEvent](sentinel/proc_creation_win_accessibility_binary_replaced_securityevent.kql) | high | experimental |
| Winlogon Spawning a Command Shell | [sigma](sigma/proc_creation_win_winlogon_spawns_shell.yml) | [raw](splunk/proc_creation_win_winlogon_spawns_shell.spl), [CIM](splunk/proc_creation_win_winlogon_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_winlogon_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_winlogon_spawns_shell_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- None expected

## Testing
See [tests/](tests/).
