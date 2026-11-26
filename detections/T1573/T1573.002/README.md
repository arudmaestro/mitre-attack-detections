# T1573.002 - Encrypted Channel: Asymmetric Cryptography

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1573/002/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may employ a known asymmetric encryption algorithm to conceal command and control traffic rather than relying on any inherent protections provided by a communication protocol.

## Status: guidance only
Asymmetric encryption (TLS or custom RSA) protects C2 traffic like any other encrypted connection.

## How to detect it
- TLS metadata: JA3/JA4 fingerprints of known C2 frameworks, self-signed or newly issued certificates, and beaconing to rare domains.
