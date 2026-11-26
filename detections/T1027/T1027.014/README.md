# T1027.014 - Obfuscated Files or Information: Polymorphic Code

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/014/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may utilize polymorphic code (also known as metamorphic or mutating code) to evade detection.

## Status: guidance only
Polymorphic code changes on every copy; it defeats hash and signature matching by design.

## How to detect it
- Behaviour-based detections (the rules in this project) and EDR behavioural engines.
- File analysis at the email/web gateway and on endpoints (YARA, sandboxing, static analysis).
