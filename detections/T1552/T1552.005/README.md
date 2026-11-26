# T1552.005 - Unsecured Credentials: Cloud Instance Metadata API

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1552/005/
- **Platforms:** IaaS

## Summary
Adversaries may attempt to access the Cloud Instance Metadata API to collect credentials and other sensitive data.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Cloud Instance Metadata Credentials Requested from the Command Line on Linux | [sigma](sigma/proc_creation_lnx_cloud_metadata_credentials_request.yml) | [CIM](splunk/proc_creation_lnx_cloud_metadata_credentials_request.spl) | [MDE](sentinel/proc_creation_lnx_cloud_metadata_credentials_request.kql) | medium | experimental |
| Cloud Instance Metadata Credentials Requested from the Command Line on Windows | [sigma](sigma/proc_creation_win_cloud_metadata_credentials_request.yml) | [raw](splunk/proc_creation_win_cloud_metadata_credentials_request.spl), [CIM](splunk/proc_creation_win_cloud_metadata_credentials_request_cim.spl) | [MDE](sentinel/proc_creation_win_cloud_metadata_credentials_request.kql), [SecurityEvent](sentinel/proc_creation_win_cloud_metadata_credentials_request_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Scripts on cloud instances that fetch role credentials with curl (most SDKs do not use a command line)
- Scripts on cloud instances that fetch role credentials (most SDKs do not use a command line)

## Limitations
SSRF attacks reach the metadata service through a web application, with no command line on the instance; enforce IMDSv2 on AWS and watch CloudTrail for instance-role credentials used from outside AWS (GuardDuty InstanceCredentialExfiltration). Requests to 169.254.169.254 without these paths (e.g. the user-data or instance-identity documents) are not covered.

## Testing
See [tests/](tests/).
