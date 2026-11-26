# T1056.004 - Input Capture: Credential API Hooking

- **Tactic(s):** Collection, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1056/004/
- **Platforms:** Windows, Linux, macOS

## Summary
Adversaries may hook into Windows application programming interface (API) functions and Linux system functions to collect user credentials.

## Status: guidance only
Credential API hooking patches functions inside processes in memory.

## How to detect it
- EDR memory-scanning and injection alerts (the primary control for process injection).
- Integrity checks of lsass and authentication DLLs (LSA protection / RunAsPPL limits the technique).
