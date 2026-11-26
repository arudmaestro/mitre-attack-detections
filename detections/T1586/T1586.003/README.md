# T1586.003 - Compromise Accounts: Cloud Accounts

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1586/003/
- **Platforms:** PRE

## Summary
Adversaries may compromise cloud accounts that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- For your own cloud tenants: sign-ins from new countries, devices or ASNs, MFA changes (T1556.006) and new access keys (T1098.001).
- Leaked-credential monitoring (identity-provider leaked credential detection, breach notification services).
