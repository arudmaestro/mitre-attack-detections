# T1070 - Indicator Removal

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/
- **Platforms:** Containers, ESXi, Linux, macOS, Network Devices, Office Suite, Windows

## Summary
Adversaries may selectively delete or modify artifacts generated to reduce indications of their presence and blend in with legitimate activity.

## Status: guidance only
Indicator Removal is a parent technique.

Detections live in the sub-technique folders.

## How to detect it
- Use the sub-technique rules (T1070.003 - .007).
- Event log clearing and file deletion of logs are separate sub-techniques.
