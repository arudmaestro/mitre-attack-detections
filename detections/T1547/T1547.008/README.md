# T1547.008 - Boot or Logon Autostart Execution: LSASS Driver

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/008/
- **Platforms:** Windows

## Summary
Adversaries may modify or add LSASS drivers to obtain persistence on compromised systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| LSASS Extension DLL Registered under NTDS | [sigma](sigma/registry_set_win_lsass_driver_ntds_extension.yml) | [raw](splunk/registry_set_win_lsass_driver_ntds_extension.spl), [CIM](splunk/registry_set_win_lsass_driver_ntds_extension_cim.spl) | [MDE](sentinel/registry_set_win_lsass_driver_ntds_extension.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- None expected

## Testing
See [tests/](tests/).
