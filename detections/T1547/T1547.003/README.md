# T1547.003 - Boot or Logon Autostart Execution: Time Providers

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/003/
- **Platforms:** Windows

## Summary
Adversaries may abuse time providers to execute DLLs when the system boots.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Windows Time Provider DLL Changed | [sigma](sigma/registry_set_win_time_provider_dll.yml) | [raw](splunk/registry_set_win_time_provider_dll.spl), [CIM](splunk/registry_set_win_time_provider_dll_cim.spl) | [MDE](sentinel/registry_set_win_time_provider_dll.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Third-party time synchronisation software (e.g. PTP/GPS clocks)

## Testing
See [tests/](tests/).
