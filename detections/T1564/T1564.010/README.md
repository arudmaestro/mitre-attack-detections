# T1564.010 - Hide Artifacts: Process Argument Spoofing

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/010/
- **Platforms:** Windows

## Summary
Adversaries may attempt to hide process command-line arguments by overwriting process memory.

## Status: guidance only
Process argument spoofing overwrites the command line in the process's memory after the process has started, so process-creation logs record the fake command line.

## How to detect it
- EDR that reads the command line at creation and later from memory and compares them (some EDRs alert on the difference).
- Parent processes creating suspended processes (Cobalt Strike argue, PPID spoofing) are better detected by EDR process-tampering alerts.
