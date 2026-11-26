# T1055.003 - Process Injection: Thread Execution Hijacking

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/003/
- **Platforms:** Windows

## Summary
Adversaries may inject malicious code into hijacked processes in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
Thread execution hijacking (suspend, modify context, resume) happens through thread APIs that process logs do not show.

## How to detect it
- EDR memory-scanning and injection alerts (the primary control for process injection).
- Sysmon EID 8 (CreateRemoteThread) and EID 10 (ProcessAccess) hunting, filtered to unusual source and target processes.
