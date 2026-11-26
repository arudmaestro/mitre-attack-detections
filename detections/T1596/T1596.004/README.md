# T1596.004 - Search Open Technical Databases: CDNs

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1596/004/
- **Platforms:** PRE

## Summary
Adversaries may search content delivery network (CDN) data about victims that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Make sure origin servers behind a CDN accept traffic only from the CDN, so the origin IP found in CDN data cannot be attacked directly.
