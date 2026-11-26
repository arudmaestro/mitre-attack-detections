# T1485 - Data Destruction

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1485/
- **Platforms:** Containers, ESXi, IaaS, Linux, macOS, Windows

## Summary
Adversaries may destroy data and files on specific systems or in large numbers on a network to interrupt availability to systems, services, and network resources.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Secure Deletion or Free-Space Wipe on Windows | [sigma](sigma/proc_creation_win_secure_delete_tools.yml) | [raw](splunk/proc_creation_win_secure_delete_tools.spl), [CIM](splunk/proc_creation_win_secure_delete_tools_cim.spl) | [MDE](sentinel/proc_creation_win_secure_delete_tools.kql), [SecurityEvent](sentinel/proc_creation_win_secure_delete_tools_securityevent.kql) | medium | experimental |
| File Shredding or Disk Overwrite on Linux | [sigma](sigma/proc_creation_lnx_data_wipe.yml) | [CIM](splunk/proc_creation_lnx_data_wipe.spl) | [MDE](sentinel/proc_creation_lnx_data_wipe.kql) | medium | experimental |
| AWS S3 Bucket Deleted | [sigma](sigma/aws_cloudtrail_s3_bucket_deleted.yml) | [raw](splunk/aws_cloudtrail_s3_bucket_deleted.spl) | [AWSCloudTrail](sentinel/aws_cloudtrail_s3_bucket_deleted.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: AWS CloudTrail (`sourcetype=aws:cloudtrail`, Splunk Add-on for AWS). Sentinel: `AWSCloudTrail` (Amazon Web Services connector).

## Known false positives & tuning
- Administrators securely wiping disks before decommissioning
- Administrators wiping disks before reuse
- Scripts that shred temporary secrets
- Infrastructure-as-code pipelines tearing down environments

## Limitations
Mass deletion of files or objects (DeleteObjects bursts, many files removed by one process) needs file or S3 data events with thresholds; these rules cover the dedicated wiping tools and bucket deletion.

## Testing
See [tests/](tests/).
