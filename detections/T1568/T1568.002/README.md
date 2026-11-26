# T1568.002 - Dynamic Resolution: Domain Generation Algorithms

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1568/002/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may make use of Domain Generation Algorithms (DGAs) to dynamically identify a destination domain for command and control traffic rather than relying on a list of static IP addresses or domains.

## Status: guidance only
Domain generation algorithms create many random-looking domains; detection is statistical over DNS logs.

## How to detect it
- DNS logs (Sysmon EID 22 / DeviceNetworkEvents DnsQueryResponse / resolver logs) and threat intelligence feeds for known malicious domains.
- Hosts with many NXDOMAIN answers, and queries for long, high-entropy domain names; DGA classifiers in NDR / DNS security products.
