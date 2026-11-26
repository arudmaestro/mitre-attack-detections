# T1556.006 - Modify Authentication Process: Multi-Factor Authentication

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/006/
- **Platforms:** IaaS, Identity Provider, Linux, macOS, Office Suite, SaaS, Windows

## Summary
Adversaries may disable or modify multi-factor authentication (MFA) mechanisms to enable persistent access to compromised accounts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS IAM MFA Device Deactivated or Deleted | [sigma](sigma/aws_cloudtrail_mfa_device_removed.yml) | [raw](splunk/aws_cloudtrail_mfa_device_removed.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_mfa_device_removed.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Users replacing a lost or new MFA device (followed by EnableMFADevice)

## Limitations
Entra ID (authentication methods removed, per-user MFA disabled) and Okta MFA changes are in identity-provider audit logs that are not data sources of this project yet.

## Testing
See [tests/](tests/).
