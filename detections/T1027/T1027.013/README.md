# T1027.013 - Obfuscated Files or Information: Encrypted/Encoded File

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/013/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may encrypt or encode files to obfuscate strings, bytes, and other specific patterns to impede detection.

## Status: guidance only
Encrypted or encoded files are only recognisable by analysing their content.

## How to detect it
- File analysis at the email/web gateway and on endpoints (YARA, sandboxing, static analysis).
- Decoding activity is covered by other rules (e.g. T1027.010 for Base64 + IEX).
