# T1584.003 - Compromise Infrastructure: Virtual Private Server

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1584/003/
- **Platforms:** PRE

## Summary
Adversaries may compromise third-party Virtual Private Servers (VPSs) that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure the adversary buys or compromises, outside your logs.

## How to detect it
- Threat intelligence on adversary infrastructure (domains, IP ranges, certificates) and blocking known indicators.
- Domain monitoring (newly registered look-alike domains, certificate transparency) and takedown requests.
