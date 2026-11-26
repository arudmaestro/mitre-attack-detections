# T1648 - Serverless Execution

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1648/
- **Platforms:** SaaS, IaaS, Office Suite

## Summary
Adversaries may abuse serverless computing, integration, and automation services to execute arbitrary code in cloud environments.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS Lambda Function URL Created Without Authentication | [sigma](sigma/aws_cloudtrail_lambda_public_function_url.yml) | [raw](splunk/aws_cloudtrail_lambda_public_function_url.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_lambda_public_function_url.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Public webhooks and APIs deliberately built on Lambda function URLs

## Limitations
CloudTrail Lambda event names carry an API version suffix (e.g. CreateFunctionUrlConfig20211031); check the names in your trail if the rule never fires. New or changed functions (CreateFunction20150331, UpdateFunctionCode20150331v2) by unusual identities, Azure Functions / Logic Apps and Google Cloud Functions are not covered.

## Testing
See [tests/](tests/).
