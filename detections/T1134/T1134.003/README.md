# T1134.003 - Access Token Manipulation: Make and Impersonate Token

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1134/003/
- **Platforms:** Windows

## Summary
Adversaries may make new tokens and impersonate users to escalate privileges and bypass access controls.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Logon with New Credentials (LogonType 9, seclogo) | [sigma](sigma/win_security_new_credentials_logon.yml) | [raw](splunk/win_security_new_credentials_logon.spl) | [SecurityEvent](sentinel/win_security_new_credentials_logon.kql) | medium | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Administrators using runas /netonly

## Limitations
Hunt further by AuthenticationPackageName and by which process requested the logon (Defender for Endpoint DeviceLogonEvents LogonType 'NewCredentials').

## Testing
See [tests/](tests/).
