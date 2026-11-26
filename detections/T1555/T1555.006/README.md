# T1555.006 - Credentials from Password Stores: Cloud Secrets Management Stores

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1555/006/
- **Platforms:** IaaS

## Summary
Adversaries may acquire credentials from cloud-native secret management solutions such as AWS Secrets Manager, GCP Secret Manager, Azure Key Vault, and Terraform Vault.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS Secrets Manager Secrets Read in Bulk | [sigma](sigma/aws_cloudtrail_secrets_manager_batch_get.yml) | [raw](splunk/aws_cloudtrail_secrets_manager_batch_get.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_secrets_manager_batch_get.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Applications that load several secrets at start-up with BatchGetSecretValue (allowlist their roles)

## Limitations
Single GetSecretValue calls are normal for applications; baseline which roles read which secrets and alert on new identities or many distinct secrets per identity. Azure Key Vault (AzureDiagnostics SecretGet) and GCP Secret Manager are not data sources of this project yet.

## Testing
See [tests/](tests/).
