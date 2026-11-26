# T1036.012 - Masquerading: Browser Fingerprint

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/012/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to blend in with legitimate traffic by spoofing browser and system attributes like operating system, system language, platform, user-agent string, resolution, time zone, etc.

## Status: guidance only
Browser fingerprint spoofing happens in web requests to external services, outside endpoint logs.

## How to detect it
- Identity provider and web application logs: user-agent or fingerprint inconsistent with the user's device history.
