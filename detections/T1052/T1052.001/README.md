# T1052.001 - Exfiltration Over Physical Medium: Exfiltration over USB

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1052/001/
- **Platforms:** Linux, Windows, macOS

## Summary
Adversaries may attempt to exfiltrate data over a USB connected physical device.

## Status: guidance only
Copying files to USB storage needs device-control or file telemetry on removable drives.

## How to detect it
- Device control / EDR: USB mass storage mounts (DeviceEvents UsbDriveMounted, Kernel-PnP events).
- File events (DeviceFileEvents, Sysmon EID 11) writing to removable drive letters, especially in bulk.
