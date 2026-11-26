# T1588.001 - Obtain Capabilities: Malware

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1588/001/
- **Platforms:** PRE

## Summary
Adversaries may buy, steal, or download malware that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Threat intelligence on the adversary's infrastructure and tooling (domains, IP ranges, certificates, file hashes) and blocking known indicators.
- Malware obtained from others behaves like any malware on your hosts; endpoint behaviour rules and EDR cover it.
