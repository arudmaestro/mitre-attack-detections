# T1565.002 - Data Manipulation: Transmitted Data Manipulation

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1565/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may alter data en route to storage or other systems in order to manipulate external outcomes or hide activity, thus threatening the integrity of the data.

## Status: guidance only
Transmitted data manipulation changes data in transit (e.g. bank details in payment files or emails).

## How to detect it
- Message and file signing / integrity checks between systems; TLS everywhere; adversary-in-the-middle detections (T1557).
- Integrity controls for the data that matters: database audit logs (who changed which records), file integrity monitoring and hashes for critical files, and reconciliation checks in business processes.
