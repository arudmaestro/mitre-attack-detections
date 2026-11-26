# T1496.004 - Resource Hijacking: Cloud Service Hijacking

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1496/004/
- **Platforms:** SaaS

## Summary
Adversaries may leverage compromised software-as-a-service (SaaS) applications to complete resource-intensive tasks, which may impact hosted service availability.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS Bedrock Model Access Requested or Enabled | [sigma](sigma/aws_cloudtrail_bedrock_model_access_enabled.yml) | [raw](splunk/aws_cloudtrail_bedrock_model_access_enabled.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_bedrock_model_access_enabled.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Administrators enabling Bedrock models for approved projects

## Limitations
Also watch GetModelInvocationLoggingConfiguration followed by heavy InvokeModel use from new principals or regions, and SES sending-quota changes (another cloud service attackers resell). Other clouds' AI services are not covered.

## Testing
See [tests/](tests/).
