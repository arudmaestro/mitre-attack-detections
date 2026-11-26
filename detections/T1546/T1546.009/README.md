# T1546.009 - Event Triggered Execution: AppCert DLLs

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/009/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence and/or elevate privileges by executing malicious content triggered by AppCert DLLs loaded into processes.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AppCert DLL Registered | [sigma](sigma/registry_set_win_appcert_dlls.yml) | [raw](splunk/registry_set_win_appcert_dlls.spl), [CIM](splunk/registry_set_win_appcert_dlls_cim.spl) | [MDE](sentinel/registry_set_win_appcert_dlls.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Rare: application-control or security products using AppCertDlls

## Testing
See [tests/](tests/).
