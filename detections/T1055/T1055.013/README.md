# T1055.013 - Process Injection: Process Doppelgänging

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/013/
- **Platforms:** Windows

## Summary
Adversaries may inject malicious code into a process via process doppelgänging in order to evade process-based defenses as well as possibly elevate privileges.

## Status: guidance only
Process doppelganging uses NTFS transactions to run code from a file that never exists on disk.

## How to detect it
- EDR memory-scanning and injection alerts (the primary control for process injection).
- Sysmon EID 25 (ProcessTampering) where available.
