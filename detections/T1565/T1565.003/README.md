# T1565.003 - Data Manipulation: Runtime Data Manipulation

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1565/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may modify systems in order to manipulate the data as it is accessed and displayed to an end user, thus threatening the integrity of the data.

## Status: guidance only
Runtime data manipulation changes what an application shows or processes in memory.

## How to detect it
- Application integrity monitoring and EDR alerts for process injection into the business application (T1055).
- Integrity controls for the data that matters: database audit logs (who changed which records), file integrity monitoring and hashes for critical files, and reconciliation checks in business processes.
