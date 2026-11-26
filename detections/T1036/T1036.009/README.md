# T1036.009 - Masquerading: Break Process Trees

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/009/
- **Platforms:** Linux, macOS

## Summary
An adversary may attempt to evade process tree-based analysis by modifying executed malware's parent process ID (PPID).

## Status: guidance only
Breaking process trees (double fork, setsid, re-parenting to PID 1) changes parent relationships rather than creating a distinct event.

## How to detect it
- EDR process lineage that tracks the original creator.
- Hunt: shells or interpreters whose parent is PID 1 (init/systemd) and that are not services.
