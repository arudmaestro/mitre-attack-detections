# T1669 - Wi-Fi Networks

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1669/
- **Platforms:** Linux, Network Devices, Windows, macOS

## Summary
Adversaries may gain initial access to target systems by connecting to wireless networks.

## Status: guidance only
Wi-Fi access happens at the wireless network, before the device reaches your monitored systems.

## How to detect it
- Wireless controller / NAC logs: new devices on corporate Wi-Fi, logins with valid accounts from unusual devices, rogue access points.
- WPA2/WPA3-Enterprise with certificate-based authentication; separate guest networks.
