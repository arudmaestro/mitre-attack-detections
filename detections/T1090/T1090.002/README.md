# T1090.002 - Proxy: External Proxy

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1090/002/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may use an external proxy to act as an intermediary for network communications to a command and control server to avoid direct connections to their infrastructure.

## Status: guidance only
External proxies (VPS, residential proxy services) relay C2 traffic; endpoint logs only show the connection to the proxy.

## How to detect it
- Threat intelligence on proxy/VPN/hosting ASNs in firewall and proxy logs.
- Proxy chaining tools on endpoints (proxychains, SOCKS clients) if used locally.
