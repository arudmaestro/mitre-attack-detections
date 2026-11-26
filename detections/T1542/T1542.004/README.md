# T1542.004 - Pre-OS Boot: ROMMONkit

- **Tactic(s):** Stealth, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1542/004/
- **Platforms:** Network Devices

## Summary
Adversaries may abuse the ROM Monitor (ROMMON) by loading an unauthorized firmware with adversary code to provide persistent access and manipulate device behavior that is difficult to detect.

## Status: guidance only
ROMMONkits change the ROM monitor of network devices.

## How to detect it
- Network device configuration and image integrity checks (compare running image hashes with vendor-published values), AAA/TACACS command logs, and syslog for reloads and boot-variable changes.
