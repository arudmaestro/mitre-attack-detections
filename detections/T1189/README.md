# T1189 - Drive-by Compromise

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1189/
- **Platforms:** Identity Provider, Linux, macOS, Windows

## Summary
Adversaries may gain access to a system through a user visiting a website over the normal course of browsing.

## Status: guidance only
Drive-by compromise happens in the browser when visiting a malicious site.

## How to detect it
- Web proxy / secure web gateway: newly registered or uncategorised domains, exploit-kit indicators.
- Endpoint: browsers spawning shells, script hosts or downloading executables (browser child-process rules).
