# T1200 - Hardware Additions

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1200/
- **Platforms:** Windows, Linux, macOS

## Summary
Adversaries may physically introduce computer accessories, networking hardware, or other computing devices into a system or network that can be used as a vector to gain access.

## Status: guidance only
Hardware additions (rogue USB devices, network implants) are physical actions.

## How to detect it
- Device control / USB allowlisting; PnP device-install events (Windows Kernel-PnP, DeviceEvents PnpDeviceConnected).
- Network access control (802.1X) and alerts on new MAC addresses.
