# T1110.003 - Brute Force: Password Spraying

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1110/003/
- **Platforms:** Containers, ESXi, IaaS, Identity Provider, Linux, Network Devices, Office Suite, SaaS, Windows, macOS

## Summary
Adversaries may use a single or small list of commonly used passwords against many different accounts to attempt to acquire valid account credentials.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Failed Logons for Many Accounts from One Source | [sigma](sigma/win_security_password_spray_many_accounts.yml) | [raw](splunk/win_security_password_spray_many_accounts.spl) | [SecurityEvent](sentinel/win_security_password_spray_many_accounts.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Shared jump hosts, VDI or Citrix servers where many users mistype passwords
- Vulnerability scanners with credentialed checks

## Limitations
Threshold rule. Sprays against Entra ID / Microsoft 365 (SigninLogs), VPNs or Kerberos (4771) are not covered by this rule. Local logons (no source IP) are excluded.

## Testing
See [tests/](tests/).
