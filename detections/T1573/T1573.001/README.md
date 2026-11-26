# T1573.001 - Encrypted Channel: Symmetric Cryptography

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1573/001/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may employ a known symmetric encryption algorithm to conceal command and control traffic rather than relying on any inherent protections provided by a communication protocol.

## Status: guidance only
Symmetric encryption is used inside the C2 protocol; the traffic just looks like random data.

## How to detect it
- NDR / TLS inspection: non-TLS traffic with high entropy on common ports, and beaconing (regular intervals, constant sizes).
