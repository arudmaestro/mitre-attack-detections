# T1055.004 - Process Injection: Asynchronous Procedure Call

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/004/
- **Platforms:** Windows

## Summary
Adversaries may inject malicious code into processes via the asynchronous procedure call (APC) queue in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
APC injection queues code on another process's thread via QueueUserAPC; it is only visible to API or memory telemetry.

## How to detect it
- EDR memory-scanning and injection alerts (the primary control for process injection).
- Sysmon EID 8 (CreateRemoteThread) and EID 10 (ProcessAccess) hunting, filtered to unusual source and target processes.
