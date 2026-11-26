# T1480.001 - Execution Guardrails: Environmental Keying

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1480/001/
- **Platforms:** Linux, Windows, macOS

## Summary
Adversaries may environmentally key payloads or other features of malware to evade defenses and constraint execution to a specific target environment.

## Status: guidance only
Environmental keying derives decryption keys from host attributes inside the malware.

## How to detect it
- Malware analysis and sandboxing with the target's environment details; endpoint behaviour after decryption is covered by other techniques.
