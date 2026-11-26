# T1568.003 - Dynamic Resolution: DNS Calculation

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1568/003/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may perform calculations on addresses returned in DNS results to determine which port and IP address to use for command and control, rather than relying on a predetermined port number or the actual returned IP address.

## Status: guidance only
DNS calculation derives the C2 port or address from DNS answers inside the malware.

## How to detect it
- DNS logs (Sysmon EID 22 / DeviceNetworkEvents DnsQueryResponse / resolver logs) and threat intelligence feeds for known malicious domains.
- Connections to an IP address shortly after resolving a domain to a different address (the calculated one).
