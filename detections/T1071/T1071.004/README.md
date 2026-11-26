# T1071.004 - Application Layer Protocol: DNS

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1071/004/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may communicate using the Domain Name System (DNS) application layer protocol to avoid detection/network filtering by blending in with existing traffic.

## Status: guidance only
DNS C2 hides in DNS queries and responses.

## How to detect it
- DNS analytics: long or high-entropy subdomains, high query volume to one domain, many TXT/NULL queries (Sysmon EID 22, DnsEvents, Splunk Network_Resolution).
- Protective DNS / DNS firewall for known tunnelling domains.
