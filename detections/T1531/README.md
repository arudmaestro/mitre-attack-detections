# T1531 - Account Access Removal

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1531/
- **Platforms:** Linux, macOS, Windows, SaaS, IaaS, Office Suite, ESXi

## Summary
Adversaries may interrupt availability of system and network resources by inhibiting access to accounts utilized by legitimate users.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Many Accounts Reset, Disabled or Deleted by One Account | [sigma](sigma/win_security_mass_account_disable_delete_reset.yml) | [raw](splunk/win_security_mass_account_disable_delete_reset.spl) | [SecurityEvent](sentinel/win_security_mass_account_disable_delete_reset.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Bulk offboarding and identity-management synchronisation (exclude their service accounts)

## Limitations
Threshold rule: tune the count and window to your environment. Domain accounts are logged on domain controllers, local accounts on each host. Entra ID / cloud account removal needs the cloud audit logs.

## Testing
See [tests/](tests/).
