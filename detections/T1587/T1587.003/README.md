# T1587.003 - Develop Capabilities: Digital Certificates

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1587/003/
- **Platforms:** PRE

## Summary
Adversaries may create self-signed SSL/TLS certificates that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- TLS metadata from proxies / NDR: connections to servers presenting self-signed, short-lived or newly issued certificates with default or random subject fields.
- Certificate fingerprints from threat intelligence (e.g. default Cobalt Strike or Metasploit certificates).
