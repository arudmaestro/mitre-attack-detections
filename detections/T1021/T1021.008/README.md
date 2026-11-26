# T1021.008 - Remote Services: Direct Cloud VM Connections

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/008/
- **Platforms:** IaaS

## Summary
Adversaries may leverage Valid Accounts to log directly into accessible cloud hosted compute infrastructure through cloud native methods.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS EC2 Instance Connect SSH Key Pushed | [sigma](sigma/aws_cloudtrail_ec2_instance_connect_key_push.yml) | [raw](splunk/aws_cloudtrail_ec2_instance_connect_key_push.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_ec2_instance_connect_key_push.kql) | low | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Administrators using EC2 Instance Connect or the serial console

## Limitations
Covers AWS EC2 Instance Connect. Other direct-connection paths include AWS SSM StartSession, Azure Serial Console / Run Command, and GCP serial port access; build per-cloud rules as needed.

## Testing
See [tests/](tests/).
