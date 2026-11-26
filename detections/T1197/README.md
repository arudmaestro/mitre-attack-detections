# T1197 - BITS Jobs

- **Tactic(s):** Stealth, Persistence, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1197/
- **Platforms:** Windows

## Summary
Adversaries may abuse BITS jobs to persistently execute code and perform various background tasks.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| BITS Job Created or Configured with bitsadmin | [sigma](sigma/proc_creation_win_bitsadmin_job_management.yml) | [raw](splunk/proc_creation_win_bitsadmin_job_management.spl), [CIM](splunk/proc_creation_win_bitsadmin_job_management_cim.spl) | [MDE](sentinel/proc_creation_win_bitsadmin_job_management.kql), [SecurityEvent](sentinel/proc_creation_win_bitsadmin_job_management_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legacy software deployment scripts using bitsadmin

## Limitations
BITS jobs created through PowerShell (Start-BitsTransfer, covered by T1105) or the COM API do not use bitsadmin; the Microsoft-Windows-Bits-Client/Operational log (event 3, 59) records all jobs.

## Testing
See [tests/](tests/).
