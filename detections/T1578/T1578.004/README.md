# T1578.004 - Modify Cloud Compute Infrastructure: Revert Cloud Instance

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1578/004/
- **Platforms:** IaaS

## Summary
An adversary may revert changes made to a cloud instance after they have performed malicious activities in attempt to evade detection and remove evidence of their presence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AWS EC2 Root Volume Replaced (Instance Reverted) | [sigma](sigma/aws_cloudtrail_replace_root_volume.yml) | [raw](splunk/aws_cloudtrail_replace_root_volume.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_replace_root_volume.kql) | medium | experimental |

## Required data sources
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Operations teams restoring instances from snapshots

## Limitations
Reverting VMs in Azure (disk swap, restore points) or GCP is not covered; also hunt for snapshot restores followed by instance restarts (CreateVolume from a snapshot, DetachVolume, AttachVolume).

## Testing
See [tests/](tests/).
