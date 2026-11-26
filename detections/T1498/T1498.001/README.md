# T1498.001 - Network Denial of Service: Direct Network Flood

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1498/001/
- **Platforms:** Windows, IaaS, Linux, macOS

## Summary
Adversaries may attempt to cause a denial of service (DoS) by directly sending a high-volume of network traffic to a target.

## Status: guidance only
Direct network floods are measured in network traffic volume.

## How to detect it
- Network/NDR and DDoS-protection telemetry (traffic volume, packets per second, source spread); cloud provider DDoS alerts (AWS Shield, Azure DDoS Protection).
- Upstream scrubbing and rate limiting; this is an availability problem first, detection second.
