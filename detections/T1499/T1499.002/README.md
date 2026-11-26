# T1499.002 - Endpoint Denial of Service: Service Exhaustion Flood

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1499/002/
- **Platforms:** Windows, IaaS, Linux, macOS

## Summary
Adversaries may target the different network services provided by systems to conduct a denial of service (DoS).

## Status: guidance only
Service exhaustion floods target a service such as a web server or TLS renegotiation.

## How to detect it
- Web server / load balancer / WAF logs: request rates per source, slow-request patterns (Slowloris).
- Network/NDR and DDoS-protection telemetry (traffic volume, packets per second, source spread); cloud provider DDoS alerts (AWS Shield, Azure DDoS Protection).
