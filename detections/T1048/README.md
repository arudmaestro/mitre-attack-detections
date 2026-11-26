# T1048 - Exfiltration Over Alternative Protocol

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1048/
- **Platforms:** ESXi, IaaS, Linux, macOS, Network Devices, Office Suite, SaaS, Windows

## Summary
Adversaries may steal data by exfiltrating it over a different protocol than that of the existing command and control channel.

## Status: guidance only
Exfiltration Over Alternative Protocol is a parent technique.

Detections live in the sub-technique folders.

## How to detect it
- Use the sub-technique rule for unencrypted protocols (T1048.003).
- Network analytics on outbound volume per protocol and destination.
