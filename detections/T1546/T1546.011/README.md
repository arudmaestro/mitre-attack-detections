# T1546.011 - Event Triggered Execution: Application Shimming

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/011/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence and/or elevate privileges by executing malicious content triggered by application shims.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Application Compatibility Shim Database Installed | [sigma](sigma/proc_creation_win_sdbinst_shim_install.yml) | [raw](splunk/proc_creation_win_sdbinst_shim_install.spl), [CIM](splunk/proc_creation_win_sdbinst_shim_install_cim.spl) | [MDE](sentinel/proc_creation_win_sdbinst_shim_install.kql), [SecurityEvent](sentinel/proc_creation_win_sdbinst_shim_install_securityevent.kql) | medium | experimental |
| Custom Shim Database Registered in the Registry | [sigma](sigma/registry_set_win_custom_shim_registered.yml) | [raw](splunk/registry_set_win_custom_shim_registered.spl), [CIM](splunk/registry_set_win_custom_shim_registered_cim.spl) | [MDE](sentinel/registry_set_win_custom_shim_registered.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Software installers that ship compatibility fixes

## Testing
See [tests/](tests/).
