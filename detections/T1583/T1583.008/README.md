# T1583.008 - Acquire Infrastructure: Malvertising

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1583/008/
- **Platforms:** PRE

## Summary
Adversaries may purchase online advertisements that can be abused to distribute malware to victims.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure the adversary buys or compromises, outside your logs.

## How to detect it
- Threat intelligence on adversary infrastructure (domains, IP ranges, certificates) and blocking known indicators.
- Domain monitoring (newly registered look-alike domains, certificate transparency) and takedown requests.
- Endpoint follow-up: software downloaded from search ads and run by users (T1204.002 rules); ad blocking and allowlisted software sources.
