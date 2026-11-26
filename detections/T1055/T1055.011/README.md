# T1055.011 - Process Injection: Extra Window Memory Injection

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/011/
- **Platforms:** Windows

## Summary
Adversaries may inject malicious code into a process via Extra Window Memory (EWM) in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
Extra Window Memory injection abuses window class memory (SetWindowLong); it is invisible to process and network logs.

## How to detect it
- EDR memory-scanning and injection alerts (the primary control for process injection).
