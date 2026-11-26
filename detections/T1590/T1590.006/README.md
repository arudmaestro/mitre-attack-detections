# T1590.006 - Gather Victim Network Information: Network Security Appliances

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1590/006/
- **Platforms:** PRE

## Summary
Adversaries may gather information about the victim's network security appliances that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Edge telemetry for active scanning of your systems (web server / WAF / CDN logs, firewall and VPN logs): many requests from one source, requests for admin pages, version banners and known vulnerable paths. These logs are not data sources of this project yet.
- Hide product and version banners on VPN, firewall and proxy login pages where possible.
