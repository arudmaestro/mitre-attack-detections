# T1542.002 - Pre-OS Boot: Component Firmware

- **Tactic(s):** Stealth, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1542/002/
- **Platforms:** Windows, Linux, macOS

## Summary
Adversaries may modify component firmware to persist on systems.

## Status: guidance only
Component firmware (disk, NIC, controller) implants live below the OS.

## How to detect it
- Hardware inventory with firmware versions; vendor firmware verification tools.
- Restrict firmware updates to signed vendor packages; monitor BMC/iLO/iDRAC logs.
