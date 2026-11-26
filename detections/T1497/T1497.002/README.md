# T1497.002 - Virtualization/Sandbox Evasion: User Activity Based Checks

- **Tactic(s):** Stealth, Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1497/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may employ various user activity checks to detect and avoid virtualization and analysis environments.

## Status: guidance only
User activity checks (mouse movement, recent files, clicks) happen through APIs inside the malware.

## How to detect it
- Sandbox analysis with simulated user activity; EDR behaviour after the checks pass.
