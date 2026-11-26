# T1036.010 - Masquerading: Masquerade Account Name

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/010/
- **Platforms:** Containers, IaaS, Identity Provider, Linux, macOS, Office Suite, SaaS, Windows

## Summary
Adversaries may match or approximate the names of legitimate accounts to make newly created ones appear benign.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| User Account Created with a Name Ending in $ | [sigma](sigma/win_security_user_account_name_ends_with_dollar.yml) | [raw](splunk/win_security_user_account_name_ends_with_dollar.spl) | [SecurityEvent](sentinel/win_security_user_account_name_ends_with_dollar.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Rare legacy tooling that creates service accounts ending in $

## Limitations
Computer accounts are created with event 4741, not 4720, so legitimate machine accounts do not trigger this rule. Requires 'Audit User Account Management'.

## Testing
See [tests/](tests/).
