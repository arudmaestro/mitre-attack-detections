# T1499.004 - Endpoint Denial of Service: Application or System Exploitation

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1499/004/
- **Platforms:** Windows, IaaS, Linux, macOS

## Summary
Adversaries may exploit software vulnerabilities that can cause an application or system to crash and deny availability to users.

## Status: guidance only
Exploits that crash an application or system show as crashes, not as a distinctive process.

## How to detect it
- Application crash events (Windows Application log 1000/1001, core dumps), repeated service restarts, IDS signatures for known DoS exploits; patching.
