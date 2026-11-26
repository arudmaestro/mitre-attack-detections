# T1585.003 - Establish Accounts: Cloud Accounts

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1585/003/
- **Platforms:** PRE

## Summary
Adversaries may create accounts with cloud providers that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Threat intelligence on the adversary's infrastructure and tooling (domains, IP ranges, certificates, file hashes) and blocking known indicators.
- Infrastructure in public clouds is cheap to create; rely on reputation of the specific IPs, domains and certificates rather than blocking whole cloud providers.
