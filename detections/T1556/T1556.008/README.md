# T1556.008 - Modify Authentication Process: Network Provider DLL

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/008/
- **Platforms:** Windows

## Summary
Adversaries may register malicious network provider dynamic link libraries (DLLs) to capture cleartext user credentials during the authentication process.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Network Provider DLL Registered | [sigma](sigma/registry_set_win_network_provider_registered.yml) | [raw](splunk/registry_set_win_network_provider_registered.spl), [CIM](splunk/registry_set_win_network_provider_registered_cim.spl) | [MDE](sentinel/registry_set_win_network_provider_registered.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- VPN, remote-access and storage clients that install a network provider (e.g. Citrix, VMware, Cisco)

## Limitations
Also review Control\NetworkProvider\Order\ProviderOrder: the provider must be listed there to be loaded.

## Testing
See [tests/](tests/).
