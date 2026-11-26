# T1055.012 - Process Injection: Process Hollowing

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/012/
- **Platforms:** Windows

## Summary
Adversaries may inject malicious code into suspended and hollowed processes in order to evade process-based defenses.

## Status: guidance only
Process hollowing starts a legitimate process suspended and replaces its memory.

## How to detect it
- EDR memory-scanning and injection alerts (the primary control for process injection).
- Hunt: legitimate binaries (svchost, notepad, rundll32) with unusual parents, command lines or network activity.
