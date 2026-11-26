# T1055.002 - Process Injection: Portable Executable Injection

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/002/
- **Platforms:** Windows

## Summary
Adversaries may inject portable executables (PE) into processes in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
Portable Executable injection writes and runs code in another process's memory without touching disk.

## How to detect it
- EDR memory-scanning and injection alerts.
- Sysmon EID 8/10 hunting: remote threads or full-access handles from unusual processes.
