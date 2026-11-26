# T1027.008 - Obfuscated Files or Information: Stripped Payloads

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/008/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may attempt to make a payload difficult to analyze by removing symbols, strings, and other human readable information.

## Status: guidance only
Stripped payloads lack symbols and strings; this is a property of the file, not an event.

## How to detect it
- File analysis: executables with no symbols or imports, unusual for the software publisher.
