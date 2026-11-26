# T1556.002 - Modify Authentication Process: Password Filter DLL

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/002/
- **Platforms:** Windows

## Summary
Adversaries may register malicious password filter dynamic link libraries (DLLs) into the authentication process to acquire user credentials as they are validated.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| LSA Password Filter (Notification Packages) Changed | [sigma](sigma/registry_set_win_lsa_notification_packages.yml) | [raw](splunk/registry_set_win_lsa_notification_packages.spl) | [MDE](sentinel/registry_set_win_lsa_notification_packages.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Password policy and synchronisation products (e.g. Entra Password Protection DC agent, Specops, password sync tools)

## Limitations
The default value is 'scecli' (plus 'rassfm' on RAS servers). Review new DLL names in the value and new DLLs in System32.

## Testing
See [tests/](tests/).
