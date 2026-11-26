# T1595.003 - Active Scanning: Wordlist Scanning

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1595/003/
- **Platforms:** PRE

## Summary
Adversaries may iteratively probe infrastructure using brute-forcing and crawling techniques.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Edge telemetry (firewall, IDS, WAF / web server and VPN logs): many connections or requests from one source across ports, hosts or URL paths, and requests matching known scanner user agents and payloads. These logs are not data sources of this project yet.
- WAF rules for directory and file brute-forcing (many 404s from one source) and for cloud storage bucket name guessing.
