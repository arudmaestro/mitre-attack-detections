# T1098.003 - Account Manipulation: Additional Cloud Roles

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1098/003/
- **Platforms:** IaaS, Identity Provider, Office Suite, SaaS

## Summary
An adversary may add additional roles or permissions to an adversary-controlled cloud account to maintain persistent access to a tenant.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS AdministratorAccess Policy Attached | [sigma](sigma/aws_cloudtrail_admin_policy_attached.yml) | [raw](splunk/aws_cloudtrail_admin_policy_attached.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_admin_policy_attached.kql) | high | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Administrators granting admin rights through change control

## Limitations
Inline policies (PutUserPolicy/PutRolePolicy) and custom admin-equivalent policies are not covered. Azure role assignments and Entra directory roles need Azure Activity / AuditLogs rules.

## Testing
See [tests/](tests/).
