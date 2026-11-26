# T1622 - Debugger Evasion

- **Tactic(s):** Stealth, Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1622/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may employ various means to detect and avoid debuggers.

## Status: guidance only
Debugger checks run inside the malware through APIs (IsDebuggerPresent, timing checks, PEB flags).

## How to detect it
- Malware analysis and sandboxes with anti-anti-debugging; EDR does not alert on these checks by themselves.
