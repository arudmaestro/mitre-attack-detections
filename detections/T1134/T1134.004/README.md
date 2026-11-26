# T1134.004 - Access Token Manipulation: Parent PID Spoofing

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1134/004/
- **Platforms:** Windows

## Summary
Adversaries may spoof the parent process identifier (PPID) of a new process to evade process-monitoring defenses or to elevate privileges.

## Status: guidance only
Parent PID spoofing sets a fake parent at process creation; the logged parent is the spoofed one.

## How to detect it
- EDR telemetry that records the real creating process (e.g. Defender's InitiatingProcess vs. reported parent).
- ETW Microsoft-Windows-Kernel-Process events, which include the real creator PID.
