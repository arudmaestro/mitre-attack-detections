# T1027.007 - Obfuscated Files or Information: Dynamic API Resolution

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/007/
- **Platforms:** Windows

## Summary
Adversaries may obfuscate then dynamically resolve API functions called by their malware in order to conceal malicious functionalities and impair defensive analysis.

## Status: guidance only
Dynamic API resolution is a code-level technique inside the binary.

## How to detect it
- File analysis and sandboxing: API hashing routines, GetProcAddress with hashed names (YARA rules for known hashing algorithms).
- EDR behavioural detections on the resulting actions.
