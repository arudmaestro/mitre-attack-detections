# T1027.009 - Obfuscated Files or Information: Embedded Payloads

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/009/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may embed payloads within other files to conceal malicious content from defenses.

## Status: guidance only
Embedded payloads are hidden inside other files (documents, images, installers) before delivery.

## How to detect it
- Gateway and endpoint file scanning: embedded PE/OLE objects, files with appended data (YARA).
- Process telemetry for the extraction step, for example the T1027.003 copy /b rule.
