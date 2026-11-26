# T1542.005 - Pre-OS Boot: TFTP Boot

- **Tactic(s):** Stealth, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1542/005/
- **Platforms:** Network Devices

## Summary
Adversaries may abuse netbooting to load an unauthorized network device operating system from a Trivial File Transfer Protocol (TFTP) server.

## Status: guidance only
TFTP boot abuse makes a network device load an attacker-supplied image.

## How to detect it
- Network device configuration and image integrity checks (compare running image hashes with vendor-published values), AAA/TACACS command logs, and syslog for reloads and boot-variable changes.
- Alert on boot-system configuration changes pointing to TFTP servers.
