# T1092 - Communication Through Removable Media

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1092/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries can perform command and control between compromised hosts on potentially disconnected networks using removable media to transfer commands from system to system.

## Status: guidance only
Communication through removable media (air-gapped C2) leaves only file activity on USB drives.

## How to detect it
- Device control logs for USB use on sensitive or air-gapped systems.
