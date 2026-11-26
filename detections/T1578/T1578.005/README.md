# T1578.005 - Modify Cloud Compute Infrastructure: Modify Cloud Compute Configurations

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1578/005/
- **Platforms:** IaaS

## Summary
Adversaries may modify settings that directly affect the size, locations, and resources available to cloud compute infrastructure in order to evade defenses.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS Service Quota Increase Requested | [sigma](sigma/aws_cloudtrail_service_quota_increase_requested.yml) | [raw](splunk/aws_cloudtrail_service_quota_increase_requested.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_service_quota_increase_requested.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Planned capacity increases by cloud operations teams

## Limitations
Other compute configuration changes (instance type changes, new regions enabled with EnableRegion, GPU instance requests) are worth adding for your environment.

## Testing
See [tests/](tests/).
