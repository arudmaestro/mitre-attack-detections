# T1546.012 - Event Triggered Execution: Image File Execution Options Injection

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/012/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence and/or elevate privileges by executing malicious content triggered by Image File Execution Options (IFEO) debuggers.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Image File Execution Options Debugger Set | [sigma](sigma/registry_set_win_ifeo_debugger.yml) | [raw](splunk/registry_set_win_ifeo_debugger.spl), [CIM](splunk/registry_set_win_ifeo_debugger_cim.spl) | [MDE](sentinel/registry_set_win_ifeo_debugger.kql) | medium | experimental |
| Silent Process Exit Monitor Program Set | [sigma](sigma/registry_set_win_silent_process_exit_monitor.yml) | [raw](splunk/registry_set_win_silent_process_exit_monitor.spl), [CIM](splunk/registry_set_win_silent_process_exit_monitor_cim.spl) | [MDE](sentinel/registry_set_win_silent_process_exit_monitor.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Developers and admins setting debuggers (e.g. replacing Task Manager with Process Explorer)
- Debugging configurations set by developers (rare)

## Limitations
Accessibility programs are also covered by the T1546.008 rule. GlobalFlag (0x200) changes that enable SilentProcessExit are not covered separately.

## Testing
See [tests/](tests/).
