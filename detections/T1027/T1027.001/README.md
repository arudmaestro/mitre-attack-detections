# T1027.001 - Obfuscated Files or Information: Binary Padding

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use binary padding to add junk data and change the on-disk representation of malware.

## Status: guidance only
Binary padding changes file size and hash only; it is not visible in process or network logs.

## How to detect it
- File analysis: unusually large executables, overlay data after the PE end, mostly-null padding (YARA, file reputation).
