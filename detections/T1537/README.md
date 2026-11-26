# T1537 - Transfer Data to Cloud Account

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1537/
- **Platforms:** IaaS, Office Suite, SaaS

## Summary
Adversaries may exfiltrate data by transferring the data, including through sharing/syncing and creating backups of cloud environments, to another cloud account they control on the same service.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS Snapshot or Image Sharing Permissions Modified | [sigma](sigma/aws_cloudtrail_snapshot_or_image_shared.yml) | [raw](splunk/aws_cloudtrail_snapshot_or_image_shared.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_snapshot_or_image_shared.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Backup and AMI-sharing pipelines between your own accounts (allowlist their account IDs)

## Limitations
Review RequestParameters for added account IDs that are not yours, or 'all' (public). Copying data to other cloud accounts through storage APIs (e.g. S3 replication to a foreign bucket, Azure/GCP sharing) is not covered.

## Testing
See [tests/](tests/).
