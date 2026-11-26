# T1546.005 - Event Triggered Execution: Trap

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/005/
- **Platforms:** macOS, Linux

## Summary
Adversaries may establish persistence by executing malicious content triggered by an interrupt signal.

## Status: guidance only
Trap commands are shell built-ins inside scripts or shell sessions.

## How to detect it
- Hunt in shell configuration files and scripts for 'trap' with network or download commands; shell history and auditd execve logging of the commands the trap runs.
