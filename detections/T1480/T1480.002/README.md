# T1480.002 - Execution Guardrails: Mutual Exclusion

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1480/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may constrain execution or actions based on the presence of a mutex associated with malware.

## Status: guidance only
Mutexes are created through APIs inside a process.

## How to detect it
- EDR / memory forensics: known malware mutex names (threat intelligence); Sysinternals Handle or Volatility (handles, mutantscan) during investigations.
