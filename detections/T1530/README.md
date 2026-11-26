# T1530 - Data from Cloud Storage

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1530/
- **Platforms:** IaaS, Office Suite, SaaS

## Summary
Adversaries may access data from cloud storage.

## Status: guidance only
Reading cloud storage uses normal data APIs; volume and principal are what matter, which needs data-event logging and thresholds.

## How to detect it
- S3 data events (GetObject) or storage analytics logs: one principal reading far more objects than usual, access from new IPs, public or cross-account access.
- Bucket policy changes making data public (PutBucketPolicy, PutBucketAcl) and Macie / Defender for Storage alerts.
