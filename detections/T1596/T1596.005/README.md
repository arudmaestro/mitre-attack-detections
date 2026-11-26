# T1596.005 - Search Open Technical Databases: Scan Databases

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1596/005/
- **Platforms:** PRE

## Summary
Adversaries may search within public scan databases for information about victims that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Check what public scan databases (Shodan, Censys) show for your IP ranges and fix exposed services and banners before attackers find them.
