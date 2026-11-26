# T1568.001 - Dynamic Resolution: Fast Flux DNS

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1568/001/
- **Platforms:** Linux, macOS, Windows, ESXi

## Summary
Adversaries may use Fast Flux DNS to hide a command and control channel behind an array of rapidly changing IP addresses linked to a single domain resolution.

## Status: guidance only
Fast flux changes the IP addresses behind a domain very often; it is visible only across many DNS answers.

## How to detect it
- DNS logs (Sysmon EID 22 / DeviceNetworkEvents DnsQueryResponse / resolver logs) and threat intelligence feeds for known malicious domains.
- Domains with very short TTLs and many distinct A records over a day, spread across unrelated networks (ASNs).
