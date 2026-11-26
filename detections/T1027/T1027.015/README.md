# T1027.015 - Obfuscated Files or Information: Compression

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/015/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use compression to obfuscate their payloads or files.

## Status: guidance only
Compressing payloads to evade scanning is a file property; archive creation for collection is covered by T1560.

## How to detect it
- Gateway scanning that unpacks nested and password-protected archives.
- File analysis at the email/web gateway and on endpoints (YARA, sandboxing, static analysis).
