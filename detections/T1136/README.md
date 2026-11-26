# T1136 - Create Account

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1136/
- **Platforms:** Windows, IaaS, Linux, macOS, Network Devices, Containers, SaaS, Office Suite, Identity Provider, ESXi

## Summary
Adversaries may create an account to maintain access to victim systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| User Account Created (Windows Security 4720) | [sigma](sigma/win_security_user_account_created.yml) | [raw](splunk/win_security_user_account_created.spl) | [SecurityEvent](sentinel/win_security_user_account_created.kql) | low | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Normal account provisioning by administrators and identity management systems

## Limitations
On domain controllers 4720 records domain accounts (T1136.002); on other hosts it records local accounts (T1136.001). Alert on creation by unexpected accounts or outside provisioning workflows.

## Testing
See [tests/](tests/).
