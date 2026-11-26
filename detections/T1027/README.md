# T1027 - Obfuscated Files or Information

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may attempt to make an executable or file difficult to discover or analyze by encrypting, encoding, or otherwise obfuscating its contents on the system or in transit.

## Status: guidance only
Obfuscated Files or Information is a parent technique; most forms need file analysis rather than logs.

Detections live in the sub-technique folders.

## How to detect it
- Use the sub-technique rules in this folder (T1027.003, T1027.004, T1027.010, T1027.011).
- File analysis: YARA, sandboxing and entropy checks at email/web gateways and on endpoints.
