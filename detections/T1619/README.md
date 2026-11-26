# T1619 - Cloud Storage Object Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1619/
- **Platforms:** IaaS

## Summary
Adversaries may enumerate objects in cloud storage infrastructure.

## Status: guidance only
Cloud storage object listing (S3 ListObjects / ListObjectsV2) is a data event: high volume, not logged by default, and normal for applications.

## How to detect it
- Enable S3 data events for sensitive buckets and baseline which roles list them; alert on new identities, many buckets listed by one identity, or listings from outside your IP ranges.
- GuardDuty S3 protection findings (Discovery:S3/AnomalousBehavior); bucket-level access logging.
