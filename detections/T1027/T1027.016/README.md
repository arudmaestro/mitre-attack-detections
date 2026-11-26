# T1027.016 - Obfuscated Files or Information: Junk Code Insertion

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/016/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use junk code / dead code to obfuscate a malware’s functionality.

## Status: guidance only
Junk code insertion is inside the binary or script and is not visible in logs.

## How to detect it
- File analysis at the email/web gateway and on endpoints (YARA, sandboxing, static analysis).
- PowerShell Script Block Logging (4104) shows the code that actually runs.
