# T1219.003 - Remote Access Tools: Remote Access Hardware

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1219/003/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary may use legitimate remote access hardware to establish an interactive command and control channel to target systems within networks.

## Status: guidance only
Remote access hardware (IP-KVM devices such as PiKVM or TinyPilot) connects as a USB keyboard/mouse and display; no software runs on the host.

## How to detect it
- PnP device-install events (DeviceEvents PnpDeviceConnected, Kernel-PnP) for new USB HID devices and EDID/display adapters with KVM vendor IDs.
- Network: new devices on the network with KVM vendor MAC prefixes; NAC / 802.1X.
