# T1498.002 - Network Denial of Service: Reflection Amplification

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1498/002/
- **Platforms:** Windows, IaaS, Linux, macOS

## Summary
Adversaries may attempt to cause a denial of service (DoS) by reflecting a high-volume of network traffic to a target.

## Status: guidance only
Reflection amplification uses third-party servers (DNS, NTP, memcached); the victim sees large inbound responses.

## How to detect it
- Network/NDR and DDoS-protection telemetry (traffic volume, packets per second, source spread); cloud provider DDoS alerts (AWS Shield, Azure DDoS Protection).
- Upstream scrubbing and rate limiting; this is an availability problem first, detection second.
- Make sure your own DNS/NTP/memcached servers cannot be used as reflectors (no open resolvers, no UDP memcached on the Internet).
