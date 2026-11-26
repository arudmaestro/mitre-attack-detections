# T1498 - Network Denial of Service

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1498/
- **Platforms:** Windows, IaaS, Linux, macOS, Containers

## Summary
Adversaries may perform Network Denial of Service (DoS) attacks to degrade or block the availability of targeted resources to users.

## Status: guidance only
Network Denial of Service is a parent technique.

## How to detect it
- Network/NDR and DDoS-protection telemetry (traffic volume, packets per second, source spread); cloud provider DDoS alerts (AWS Shield, Azure DDoS Protection).
- Upstream scrubbing and rate limiting; this is an availability problem first, detection second.
