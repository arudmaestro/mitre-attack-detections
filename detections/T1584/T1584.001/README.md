# T1584.001 - Compromise Infrastructure: Domains

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1584/001/
- **Platforms:** PRE

## Summary
Adversaries may hijack domains and/or subdomains that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure the adversary buys or compromises, outside your logs.

## How to detect it
- Threat intelligence on adversary infrastructure (domains, IP ranges, certificates) and blocking known indicators.
- Domain monitoring (newly registered look-alike domains, certificate transparency) and takedown requests.
- For your own domains: monitor DNS records for dangling CNAMEs (subdomain takeover) and changes at your registrar.
