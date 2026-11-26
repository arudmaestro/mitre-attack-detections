# T1055.015 - Process Injection: ListPlanting

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/015/
- **Platforms:** Windows

## Summary
Adversaries may abuse list-view controls to inject malicious code into hijacked processes in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
ListPlanting abuses list-view window messages to run code in another process.

## How to detect it
- EDR memory-scanning and injection alerts (the primary control for process injection).
