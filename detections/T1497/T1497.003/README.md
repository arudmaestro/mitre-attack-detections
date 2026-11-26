# T1497.003 - Virtualization/Sandbox Evasion: Time Based Checks

- **Tactic(s):** Stealth, Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1497/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may employ various time-based methods to detect virtualization and analysis environments, particularly those that attempt to manipulate time mechanisms to simulate longer elapses of time.

## Status: guidance only
Time-based checks (sleeps, timing loops) happen inside the malware.

## How to detect it
- Sandbox analysis with time acceleration; long delays between a file being written and first executed.
