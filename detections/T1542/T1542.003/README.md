# T1542.003 - Pre-OS Boot: Bootkit

- **Tactic(s):** Stealth, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1542/003/
- **Platforms:** Linux, Windows

## Summary
Adversaries may use bootkits to persist on systems.

## Status: guidance only
Bootkits modify the boot loader or MBR/VBR before Windows starts.

## How to detect it
- Secure Boot and measured boot; Windows Defender System Guard and Defender for Endpoint boot integrity alerts.
- bcdedit changes (testsigning, nointegritychecks, bootdebug) and new EFI files written to the EFI system partition.
- Patch boot manager revocations (e.g. BlackLotus / CVE-2023-24932 DBX updates).
