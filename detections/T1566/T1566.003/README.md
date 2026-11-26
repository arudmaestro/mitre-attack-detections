# T1566.003 - Phishing: Spearphishing via Service

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1566/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may send spearphishing messages via third-party services in an attempt to gain access to victim systems.

## Status: guidance only
Spearphishing via third-party services (LinkedIn, personal webmail, chat apps) happens outside corporate mail logs.

## How to detect it
- Endpoint follow-up: files downloaded from social or webmail sites and executed (T1204.002), proxy / CASB logs for file downloads from those services.
