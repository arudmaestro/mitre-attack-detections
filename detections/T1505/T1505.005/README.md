# T1505.005 - Server Software Component: Terminal Services DLL

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1505/005/
- **Platforms:** Windows

## Summary
Adversaries may abuse components of Terminal Services to enable persistent access to systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Terminal Services ServiceDll Changed | [sigma](sigma/registry_set_win_termservice_servicedll_changed.yml) | [raw](splunk/registry_set_win_termservice_servicedll_changed.spl), [CIM](splunk/registry_set_win_termservice_servicedll_changed_cim.spl) | [MDE](sentinel/registry_set_win_termservice_servicedll_changed.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Third-party RDP enhancement products that replace termsrv.dll (rare)

## Testing
See [tests/](tests/).
