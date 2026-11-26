# T1071.002 - Application Layer Protocol: File Transfer Protocols

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1071/002/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may communicate using application layer protocols associated with transferring files to avoid detection/network filtering by blending in with existing traffic.

## Status: guidance only
C2 over FTP/SMB/TFTP needs network context to distinguish from normal file transfer.

## How to detect it
- Firewall/NDR: outbound FTP/TFTP/SMB to the Internet, which should be blocked or rare.
- Command-line file uploads are covered by T1048.003.
