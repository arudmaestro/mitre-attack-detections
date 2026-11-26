# T1210 - Exploitation of Remote Services

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1210/
- **Platforms:** Linux, Windows, macOS, ESXi

## Summary
Adversaries may exploit remote services to gain unauthorized access to internal systems once inside of a network.

## Status: guidance only
Exploitation of remote services shows in network traffic and service crashes, not in a consistent process pattern.

## How to detect it
- IDS/NDR signatures for known exploits (SMB, RDP, print spooler, Exchange) and patch-level based vulnerability scanning.
- Endpoint: services such as spoolsv.exe or lsass.exe starting shells, and repeated service crashes (Application log 1000/1001).
