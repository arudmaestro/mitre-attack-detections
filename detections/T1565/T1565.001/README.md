# T1565.001 - Data Manipulation: Stored Data Manipulation

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1565/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may insert, delete, or manipulate data at rest in order to influence external outcomes or hide activity, thus threatening the integrity of the data.

## Status: guidance only
Stored data manipulation changes records in databases or files with the application's own access; what is 'wrong' depends on the business data.

## How to detect it
- Integrity controls for the data that matters: database audit logs (who changed which records), file integrity monitoring and hashes for critical files, and reconciliation checks in business processes.
- Detect the access that comes first: privileged logons and unusual tools on the systems that hold the data.
