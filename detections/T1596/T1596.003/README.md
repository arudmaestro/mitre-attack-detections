# T1596.003 - Search Open Technical Databases: Digital Certificates

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1596/003/
- **Platforms:** PRE

## Summary
Adversaries may search public digital certificate data for information about victims that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Certificate transparency logs show every name in public certificates; use wildcard certificates or internal CAs for internal host names.
