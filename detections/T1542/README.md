# T1542 - Pre-OS Boot

- **Tactic(s):** Stealth, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1542/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may abuse Pre-OS Boot mechanisms as a way to establish persistence on a system.

## Status: guidance only
Pre-OS Boot is a parent technique; the activity happens before the operating system and its logging start.

## How to detect it
- Firmware integrity: UEFI Secure Boot, measured boot / TPM attestation (e.g. Defender for Endpoint device health, Intune compliance), vendor firmware scanning (CHIPSEC, Defender UEFI scanner).
- Restrict firmware updates to signed vendor packages; monitor BMC/iLO/iDRAC logs.
