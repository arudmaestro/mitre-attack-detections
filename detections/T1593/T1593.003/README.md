# T1593.003 - Search Open Websites/Domains: Code Repositories

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1593/003/
- **Platforms:** PRE

## Summary
Adversaries may search public code repositories for information about victims that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Secret scanning on public and internal repositories (GitHub secret scanning, gitleaks, trufflehog) and fast rotation of any exposed credential.
- Monitor public code hosting for your domain names, internal host names and code copied from private repositories.
