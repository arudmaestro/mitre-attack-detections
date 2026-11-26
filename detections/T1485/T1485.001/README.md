# T1485.001 - Data Destruction: Lifecycle-Triggered Deletion

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1485/001/
- **Platforms:** IaaS

## Summary
Adversaries may modify the lifecycle policies of a cloud storage bucket to destroy all objects stored within.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS S3 Lifecycle Configuration Set | [sigma](sigma/aws_cloudtrail_s3_lifecycle_configuration_set.yml) | [raw](splunk/aws_cloudtrail_s3_lifecycle_configuration_set.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_s3_lifecycle_configuration_set.kql) | low | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Infrastructure-as-code and storage administrators managing retention

## Limitations
Review RequestParameters for Expiration rules with very short Days values on buckets that hold important data. Azure Storage lifecycle management policy changes and GCS lifecycle changes are not covered.

## Testing
See [tests/](tests/).
