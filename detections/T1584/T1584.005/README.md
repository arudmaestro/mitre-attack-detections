# T1584.005 - Compromise Infrastructure: Botnet

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1584/005/
- **Platforms:** PRE

## Summary
Adversaries may compromise numerous third-party systems to form a botnet that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure the adversary buys or compromises, outside your logs.

## How to detect it
- Threat intelligence on adversary infrastructure (domains, IP ranges, certificates) and blocking known indicators.
- Domain monitoring (newly registered look-alike domains, certificate transparency) and takedown requests.
