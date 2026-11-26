# T1665 - Hide Infrastructure

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1665/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may manipulate network traffic in order to hide and evade detection of their C2 infrastructure.

## Status: guidance only
Hiding C2 infrastructure (traffic filtering by IP or user agent, domain fronting, redirectors) happens on attacker servers.

## How to detect it
- Proxy / TLS metadata: SNI that does not match the HTTP Host header (domain fronting), connections to rare domains behind CDNs.
- Threat intelligence for redirector and C2 infrastructure; sandbox detonation from varied IP ranges.
