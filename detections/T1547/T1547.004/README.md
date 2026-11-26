# T1547.004 - Boot or Logon Autostart Execution: Winlogon Helper DLL

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/004/
- **Platforms:** Windows

## Summary
Adversaries may abuse features of Winlogon to execute DLLs and/or executables when a user logs in.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Winlogon Shell, Userinit or Notify Value Changed | [sigma](sigma/registry_set_win_winlogon_helper_changed.yml) | [raw](splunk/registry_set_win_winlogon_helper_changed.spl), [CIM](splunk/registry_set_win_winlogon_helper_changed_cim.spl) | [MDE](sentinel/registry_set_win_winlogon_helper_changed.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Kiosk / Shell Launcher configurations that replace the shell

## Testing
See [tests/](tests/).
