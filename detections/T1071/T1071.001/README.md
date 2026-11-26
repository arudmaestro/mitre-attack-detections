# T1071.001 - Application Layer Protocol: Web Protocols

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1071/001/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may communicate using application layer protocols associated with web traffic to avoid detection/network filtering by blending in with existing traffic.

## Status: guidance only
Web-protocol C2 looks like normal HTTP/HTTPS traffic.

## How to detect it
- Proxy and NDR beaconing analytics (regular intervals, consistent sizes, rare domains, newly registered domains).
- TLS fingerprints (JA3/JA4) and user agents inconsistent with the sending process.
