# T1499.001 - Endpoint Denial of Service: OS Exhaustion Flood

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1499/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may launch a denial of service (DoS) attack targeting an endpoint's operating system (OS).

## Status: guidance only
OS exhaustion floods (e.g. SYN floods) target the network stack.

## How to detect it
- Network/NDR and DDoS-protection telemetry (traffic volume, packets per second, source spread); cloud provider DDoS alerts (AWS Shield, Azure DDoS Protection).
- Upstream scrubbing and rate limiting; this is an availability problem first, detection second.
- Host metrics: half-open connection counts, kernel SYN-cookie messages.
