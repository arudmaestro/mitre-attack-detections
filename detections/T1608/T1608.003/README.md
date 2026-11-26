# T1608.003 - Stage Capabilities: Install Digital Certificate

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1608/003/
- **Platforms:** PRE

## Summary
Adversaries may install SSL/TLS certificates that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure the adversary controls, outside your logs.

## How to detect it
- Certificate transparency monitoring for certificates issued for look-alike names of your domains.
