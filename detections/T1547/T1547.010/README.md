# T1547.010 - Boot or Logon Autostart Execution: Port Monitors

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/010/
- **Platforms:** Windows

## Summary
Adversaries may use port monitors to run an adversary supplied DLL during system boot for persistence or privilege escalation.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Print Port Monitor DLL Registered from a User-Writable Folder | [sigma](sigma/registry_set_win_port_monitor_user_path.yml) | [raw](splunk/registry_set_win_port_monitor_user_path.spl), [CIM](splunk/registry_set_win_port_monitor_user_path_cim.spl) | [MDE](sentinel/registry_set_win_port_monitor_user_path.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- None expected

## Limitations
Monitors whose DLL was copied to System32 (as the AddMonitor API requires) show only a file name here; review new subkeys under Control\Print\Monitors and new DLLs in System32 written by non-installer processes.

## Testing
See [tests/](tests/).
