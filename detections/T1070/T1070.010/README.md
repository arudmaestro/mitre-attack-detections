# T1070.010 - Indicator Removal: Relocate Malware

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/010/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Once a payload is delivered, adversaries may reproduce copies of the same malware on the victim system to remove evidence of their presence and/or avoid defenses.

## Status: guidance only
Relocating malware (moving or renaming files after detection) is ordinary file activity.

## How to detect it
- EDR file lineage that follows a detected file across moves and renames.
- File events (Sysmon EID 11, DeviceFileEvents FileRenamed) for executables moved into system or startup folders.
