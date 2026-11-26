# T1098.001 - Account Manipulation: Additional Cloud Credentials

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1098/001/
- **Platforms:** IaaS, Identity Provider, SaaS

## Summary
Adversaries may add adversary-controlled credentials to a cloud account to maintain persistent access to victim accounts and instances within the environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS IAM Access Key or Console Password Created | [sigma](sigma/aws_cloudtrail_iam_credentials_added.yml) | [raw](splunk/aws_cloudtrail_iam_credentials_added.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_iam_credentials_added.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Administrators onboarding users or rotating keys
- Automation that rotates access keys

## Limitations
Prioritise events where the caller (userIdentity.arn) differs from the target user (requestParameters.userName). Azure (service principal credentials) and GCP (service account keys) need their own audit-log rules.

## Testing
See [tests/](tests/).
