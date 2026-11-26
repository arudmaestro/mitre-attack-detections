# T1594 - Search Victim-Owned Websites

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1594/
- **Platforms:** PRE

## Summary
Adversaries may search websites owned by the victim for information that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Web server / WAF / CDN logs: crawling of your sites by unusual user agents or at high speed, and requests for robots.txt-disallowed paths. These logs are not data sources of this project yet.
- Remove sensitive information (staff lists, internal documents, technology details) from public websites.
