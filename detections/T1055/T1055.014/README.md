# T1055.014 - Process Injection: VDSO Hijacking

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/014/
- **Platforms:** Linux

## Summary
Adversaries may inject malicious code into processes via VDSO hijacking in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
VDSO hijacking redirects calls through the vDSO in a running Linux process's memory.

## How to detect it
- EDR for Linux with memory integrity checks.
- auditd ptrace syscall rules (see T1055.008).
