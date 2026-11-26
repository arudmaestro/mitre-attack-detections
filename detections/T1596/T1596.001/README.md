# T1596.001 - Search Open Technical Databases: DNS/Passive DNS

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1596/001/
- **Platforms:** PRE

## Summary
Adversaries may search DNS data for information about victims that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Passive DNS history is public; avoid internal names in public DNS and remove stale records that point to old or third-party infrastructure.
