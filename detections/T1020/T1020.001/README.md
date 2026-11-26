# T1020.001 - Automated Exfiltration: Traffic Duplication

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1020/001/
- **Platforms:** Network Devices, IaaS

## Summary
Adversaries may leverage traffic mirroring in order to automate data exfiltration over compromised infrastructure.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS VPC Traffic Mirroring Configured | [sigma](sigma/aws_cloudtrail_traffic_mirroring_created.yml) | [raw](splunk/aws_cloudtrail_traffic_mirroring_created.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_traffic_mirroring_created.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Network or security teams configuring traffic mirroring for monitoring

## Limitations
Covers AWS only. Equivalent cloud features: Azure virtual network TAP (Azure Activity log) and Google Cloud Packet Mirroring (GCP audit log). Network-device SPAN/port mirroring needs device configuration logs.

## Testing
See [tests/](tests/).
