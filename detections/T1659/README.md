# T1659 - Content Injection

- **Tactic(s):** Initial Access, Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1659/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may gain access and continuously communicate with victims by injecting malicious content into systems through online network traffic.

## Status: guidance only
Content injection happens in network traffic between the victim and a server (on-path attackers, compromised ISPs or Wi-Fi).

## How to detect it
- Use HTTPS everywhere with HSTS, and alert on TLS errors or certificate mismatches seen by proxies.
- Endpoint follow-up: browser downloads and executions after visiting otherwise normal sites (T1204.002).
