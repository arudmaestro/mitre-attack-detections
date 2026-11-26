# T1595.002 - Active Scanning: Vulnerability Scanning

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1595/002/
- **Platforms:** PRE

## Summary
Adversaries may scan victims for vulnerabilities that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Edge telemetry (firewall, IDS, WAF / web server and VPN logs): many connections or requests from one source across ports, hosts or URL paths, and requests matching known scanner user agents and payloads. These logs are not data sources of this project yet.
- Patch internet-facing systems first; vulnerability scanners from unknown sources are early warning of exploitation attempts.
