# T1055 - Process Injection

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may inject code into processes in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
Process injection happens through memory and thread APIs; process creation logs do not show it.

## How to detect it
- EDR injection detections (the primary control).
- Sysmon EID 8 (CreateRemoteThread) and EID 10 (ProcessAccess) for hunting, filtered to unusual source processes.
- See T1055.001 for the mavinject rule.
