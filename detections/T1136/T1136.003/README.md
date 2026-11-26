# T1136.003 - Create Account: Cloud Account

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1136/003/
- **Platforms:** IaaS, SaaS, Office Suite, Identity Provider

## Summary
Adversaries may create a cloud account to maintain access to victim systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS IAM User Created | [sigma](sigma/aws_cloudtrail_iam_user_created.yml) | [raw](splunk/aws_cloudtrail_iam_user_created.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_iam_user_created.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Administrators onboarding users; infrastructure-as-code pipelines

## Limitations
Covers AWS IAM only. Entra ID (Add user, AuditLogs) and GCP need their own audit-log rules. IAM Identity Center users are created through a different service.

## Testing
See [tests/](tests/).
