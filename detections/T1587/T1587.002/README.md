# T1587.002 - Develop Capabilities: Code Signing Certificates

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1587/002/
- **Platforms:** PRE

## Summary
Adversaries may create self-signed code signing certificates that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Allow code by publisher (WDAC / AppLocker) so that self-signed code does not run; alert on executables signed by certificates not chained to a trusted root (EDR signer information).
- Installation of a new trusted root to make such signatures valid is detected by the T1553.004 rules.
