# T1554 - Compromise Host Software Binary

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1554/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may modify host software binaries to establish persistent access to systems.

## Status: guidance only
Changed host binaries (trojanised SSH, web servers, agents) keep their names and paths; the change is in the file content.

## How to detect it
- File integrity monitoring and package verification (rpm -V, debsums, Windows signature checks) for system and application binaries.
- Alert on binaries whose hash or signer changed outside patching.
