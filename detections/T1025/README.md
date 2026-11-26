# T1025 - Data from Removable Media

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1025/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may search connected removable media on computers they have compromised to find files of interest.

## Status: guidance only
Reading files from removable media produces file-access events only with object auditing or EDR file telemetry.

## How to detect it
- Device control / EDR: removable media mounts (Windows Kernel-PnP, DeviceEvents UsbDriveMounted).
- File auditing (Security 4663) or EDR file events on removable drive letters followed by copies to local folders.
