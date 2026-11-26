# T1595.001 - Active Scanning: Scanning IP Blocks

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1595/001/
- **Platforms:** PRE

## Summary
Adversaries may scan victim IP blocks to gather information that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Edge telemetry (firewall, IDS, WAF / web server and VPN logs): many connections or requests from one source across ports, hosts or URL paths, and requests matching known scanner user agents and payloads. These logs are not data sources of this project yet.
- Rate limiting and geo / reputation blocking at the edge; reduce exposed services.
