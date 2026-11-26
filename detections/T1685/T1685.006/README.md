# T1685.006 - Disable or Modify Tools: Clear Linux or Mac System Logs

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1685/006/
- **Platforms:** Linux, macOS

## Summary
Adversaries may clear system logs to hide evidence of an intrusion.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| System Logs Deleted or Truncated on Linux | [sigma](sigma/proc_creation_lnx_system_logs_cleared.yml) | [CIM](splunk/proc_creation_lnx_system_logs_cleared.spl) | [MDE](sentinel/proc_creation_lnx_system_logs_cleared.kql) | medium | experimental |
| System Logs Deleted or Erased on macOS | [sigma](sigma/proc_creation_macos_system_logs_cleared.yml) | [CIM](splunk/proc_creation_macos_system_logs_cleared.spl) | [MDE](sentinel/proc_creation_macos_system_logs_cleared.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Administrators and cleanup scripts removing old rotated logs
- Administrators removing old logs

## Limitations
Logs emptied with shell redirection (> /var/log/auth.log, cat /dev/null > ...) start no process; auditd write watches on /var/log and missing data in your SIEM cover those. logrotate deletes old logs itself and does not match.

## Testing
See [tests/](tests/).
