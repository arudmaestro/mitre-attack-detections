# T1555.001 - Credentials from Password Stores: Keychain

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1555/001/
- **Platforms:** macOS

## Summary
Adversaries may acquire credentials from Keychain.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Keychain Dumped or Passwords Read with security | [sigma](sigma/proc_creation_macos_keychain_dump.yml) | [CIM](splunk/proc_creation_macos_keychain_dump.spl) | [MDE](sentinel/proc_creation_macos_keychain_dump.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Scripts and developer tools that read their own keychain entries with the security command

## Limitations
Keychain files copied for offline cracking (~/Library/Keychains/login.keychain-db) and API access by malware (SecItemCopyMatching) are not covered; EDR file events for the keychain folders show copies.

## Testing
See [tests/](tests/).
