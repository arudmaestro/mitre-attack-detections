# T1486 - Data Encrypted for Impact

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1486/
- **Platforms:** ESXi, IaaS, Linux, macOS, Windows

## Summary
Adversaries may encrypt data on target systems or on large numbers of systems in a network to interrupt availability to system and network resources.

## Status: guidance only
Encryption for impact is many file writes by one process; it is not one distinctive process event, and process-only rules would miss most ransomware.

## How to detect it
- File telemetry (Sysmon EID 11 / DeviceFileEvents): one process renaming or rewriting hundreds of files in minutes, new extensions, ransom notes (README / DECRYPT / HOW_TO files) appearing in many folders.
- Canary files in shares; Defender for Endpoint ransomware alerts; file-server audit 4663 bursts.
- Precursors are covered: T1490 (shadow copy deletion), T1489 (service stop), T1491.001 (wallpaper change).
