# T1074.001 - Data Staged: Local Data Staging

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1074/001/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may stage collected data in a central location or directory on the local system prior to Exfiltration.

## Status: guidance only
Local staging means copying files into one folder before exfiltration; individual copies look normal.

## How to detect it
- File events (Sysmon EID 11, DeviceFileEvents): many files from different locations written to one directory (Temp, ProgramData, Recycle Bin) by one process.
- Archive creation after collection is covered by T1560 when that batch is done.
