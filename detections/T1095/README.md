# T1095 - Non-Application Layer Protocol

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1095/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may use an OSI non-application layer protocol for communication between host and C2 server or among infected hosts within a network.

## Status: guidance only
Non-application-layer protocols (ICMP, raw TCP/UDP) for C2 need network inspection.

## How to detect it
- NDR/firewall: ICMP with payloads or high volume, unusual IP protocols, long-lived raw TCP sessions to the Internet.
