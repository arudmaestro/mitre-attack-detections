# T1666 - Modify Cloud Resource Hierarchy

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1666/
- **Platforms:** IaaS

## Summary
Adversaries may attempt to modify hierarchical structures in infrastructure-as-a-service (IaaS) environments in order to evade defenses.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS Account Left, Removed or Moved in the Organization | [sigma](sigma/aws_cloudtrail_organization_hierarchy_changed.yml) | [raw](splunk/aws_cloudtrail_organization_hierarchy_changed.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_organization_hierarchy_changed.kql) | high | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Cloud platform teams reorganising accounts

## Limitations
Azure management group and subscription moves and GCP folder / project moves are not covered. Protect the management account and use an SCP that denies organizations:LeaveOrganization.

## Testing
See [tests/](tests/).
