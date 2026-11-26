# T1499.003 - Endpoint Denial of Service: Application Exhaustion Flood

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1499/003/
- **Platforms:** Windows, IaaS, Linux, macOS

## Summary
Adversaries may target resource intensive features of applications to cause a denial of service (DoS), denying availability to those applications.

## Status: guidance only
Application exhaustion floods send expensive requests to an application.

## How to detect it
- Application and WAF logs: high rates of costly operations (search, report generation, login) per client; rate limiting.
