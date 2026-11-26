# T1651 - Cloud Administration Command

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1651/
- **Platforms:** IaaS

## Summary
Adversaries may abuse cloud management services to execute commands within virtual machines.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS Systems Manager Command or Session Started | [sigma](sigma/aws_cloudtrail_ssm_command_or_session.yml) | [raw](splunk/aws_cloudtrail_ssm_command_or_session.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_ssm_command_or_session.kql) | low | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Operations teams and automation (patching, Ansible / SSM documents) using Systems Manager

## Limitations
Baseline which identities use SSM and alert on new ones, or on AWS-RunShellScript / AWS-RunPowerShellScript commands from identities that normally do not. Azure Run Command and GCP OS Config are not covered.

## Testing
See [tests/](tests/).
