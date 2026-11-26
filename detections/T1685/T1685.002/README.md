# T1685.002 - Disable or Modify Tools: Disable or Modify Cloud Log

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1685/002/
- **Platforms:** IaaS, SaaS, Identity Provider, Office Suite

## Summary
An adversary may disable or modify cloud logging capabilities and integrations to limit what data is collected on their activities and avoid detection.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS Logging or Threat Detection Disabled or Deleted | [sigma](sigma/aws_cloudtrail_logging_disabled_or_deleted.yml) | [raw](splunk/aws_cloudtrail_logging_disabled_or_deleted.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_logging_disabled_or_deleted.kql) | high | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Cloud platform teams changing logging configuration (expected only from infrastructure-as-code roles)

## Limitations
UpdateTrail, PutEventSelectors and UpdateDetector are also used for harmless changes; review the request parameters (e.g. event selectors removing management events, detector disabled). Use an organization trail that member accounts cannot change. Entra ID, Microsoft 365 and GCP logging changes are not covered.

## Testing
See [tests/](tests/).
