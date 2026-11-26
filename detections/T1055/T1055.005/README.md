# T1055.005 - Process Injection: Thread Local Storage

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/005/
- **Platforms:** Windows

## Summary
Adversaries may inject malicious code into processes via thread local storage (TLS) callbacks in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
Thread Local Storage callback injection modifies TLS callbacks in memory.

## How to detect it
- EDR memory-scanning and injection alerts (the primary control for process injection).
- Sysmon EID 8 (CreateRemoteThread) and EID 10 (ProcessAccess) hunting, filtered to unusual source and target processes.
