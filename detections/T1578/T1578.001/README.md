# T1578.001 - Modify Cloud Compute Infrastructure: Create Snapshot

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1578/001/
- **Platforms:** IaaS

## Summary
An adversary may create a snapshot or data backup within a cloud account to evade defenses.

## Status: guidance only
Snapshots and backups are created all the time by backup jobs; misuse depends on who creates them and what follows.

## How to detect it
- CloudTrail baselining: which identities normally call this API, from which IP ranges and regions; alert on new identities or unusual volume. APIs: CreateSnapshot, CreateDBSnapshot, CreateDBClusterSnapshot, CopySnapshot.
- Snapshot sharing with other accounts is detected by the T1537 rule.
