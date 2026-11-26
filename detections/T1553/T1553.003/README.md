# T1553.003 - Subvert Trust Controls: SIP and Trust Provider Hijacking

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1553/003/
- **Platforms:** Windows

## Summary
Adversaries may tamper with SIP and trust provider components to mislead the operating system and application control tools when conducting signature validation checks.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| SIP or Trust Provider DLL Registered from a User-Writable Folder | [sigma](sigma/registry_set_win_sip_trust_provider_user_path.yml) | [raw](splunk/registry_set_win_sip_trust_provider_user_path.spl), [CIM](splunk/registry_set_win_sip_trust_provider_user_path_cim.spl) | [MDE](sentinel/registry_set_win_sip_trust_provider_user_path.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- None expected

## Limitations
Hijacks that point to a DLL copied into System32, or that change the FuncName value to another export of a signed DLL, are not covered; review all changes under Cryptography\OID\EncodingType 0\CryptSIPDll* and Cryptography\Providers\Trust by processes other than installers.

## Testing
See [tests/](tests/).
