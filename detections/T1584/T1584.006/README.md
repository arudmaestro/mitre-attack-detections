# T1584.006 - Compromise Infrastructure: Web Services

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1584/006/
- **Platforms:** PRE

## Summary
Adversaries may compromise access to third-party web services that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Threat intelligence on the adversary's infrastructure and tooling (domains, IP ranges, certificates, file hashes) and blocking known indicators.
- Your proxy / DNS logs: traffic to legitimate web services (code hosting, file sharing, notes, chat) from servers or from processes that normally do not use them is covered by the T1567 rules (and the T1102 guidance).
