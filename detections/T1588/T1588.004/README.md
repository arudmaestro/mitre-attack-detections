# T1588.004 - Obtain Capabilities: Digital Certificates

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1588/004/
- **Platforms:** PRE

## Summary
Adversaries may buy and/or steal SSL/TLS certificates that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- TLS certificates from public CAs make phishing and C2 sites look legitimate: monitor certificate transparency logs for certificates issued for look-alike names of your domains.
- Proxy / NDR TLS metadata for newly issued certificates on rarely visited domains.
