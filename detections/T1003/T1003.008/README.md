# T1003.008 - OS Credential Dumping: /etc/passwd and /etc/shadow

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/008/
- **Platforms:** Linux

## Summary
Adversaries may attempt to dump the contents of /etc/passwd and /etc/shadow to enable offline password cracking.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Access to /etc/shadow or unshadow Execution | [sigma](sigma/proc_creation_lnx_shadow_file_access.yml) | [CIM](splunk/proc_creation_lnx_shadow_file_access.spl) | [MDE](sentinel/proc_creation_lnx_shadow_file_access.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and configuration management (permission checks, backups)

## Testing
See [tests/](tests/).
