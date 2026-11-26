# T1542.001 - Pre-OS Boot: System Firmware

- **Tactic(s):** Stealth, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1542/001/
- **Platforms:** Network Devices, Windows

## Summary
Adversaries may modify system firmware to persist on systems.The BIOS (Basic Input/Output System) and The Unified Extensible Firmware Interface (UEFI) or Extensible Firmware Interface (EFI) are examples of system firmware that operate as the software interface between the operating system and hardware of a computer.

## Status: guidance only
System firmware (UEFI/BIOS) implants live below the OS.

## How to detect it
- Firmware integrity: UEFI Secure Boot, measured boot / TPM attestation (e.g. Defender for Endpoint device health, Intune compliance), vendor firmware scanning (CHIPSEC, Defender UEFI scanner).
- Restrict firmware updates to signed vendor packages; monitor BMC/iLO/iDRAC logs.
