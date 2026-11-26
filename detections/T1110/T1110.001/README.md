# T1110.001 - Brute Force: Password Guessing

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1110/001/
- **Platforms:** Containers, ESXi, IaaS, Identity Provider, Linux, macOS, Network Devices, Office Suite, SaaS, Windows

## Summary
Adversaries with no prior knowledge of legitimate credentials within the system or environment may guess passwords to attempt access to accounts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Many Failed Logons for One Account | [sigma](sigma/win_security_failed_logons_single_account.yml) | [raw](splunk/win_security_failed_logons_single_account.spl) | [SecurityEvent](sentinel/win_security_failed_logons_single_account.kql) | medium | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Users with a stale password on a phone or mapped drive
- Misconfigured services or scheduled tasks

## Limitations
Threshold rule: tune the count and window to your account lockout policy. Kerberos pre-authentication failures (4771) and Entra ID sign-in failures are separate sources not covered here.

## Testing
See [tests/](tests/).
