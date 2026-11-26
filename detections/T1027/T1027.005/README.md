# T1027.005 - Obfuscated Files or Information: Indicator Removal from Tools

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/005/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may remove indicators from tools if they believe their malicious tool was detected, quarantined, or otherwise curtailed.

## Status: guidance only
Removing indicators from tools happens on the attacker side before delivery.

## How to detect it
- Behaviour-based detections (the other rules in this project) rather than hash/string indicators.
- Re-hunt on behaviour after an incident instead of relying on updated IOCs.
