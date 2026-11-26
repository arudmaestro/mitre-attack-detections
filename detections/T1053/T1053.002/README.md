# T1053.002 - Scheduled Task/Job: At

- **Tactic(s):** Execution, Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1053/002/
- **Platforms:** Windows, Linux, macOS

## Summary
Adversaries may abuse the at utility to perform task scheduling for initial or recurring execution of malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Legacy at.exe Scheduler Executed | [sigma](sigma/proc_creation_win_at_exe.yml) | [raw](splunk/proc_creation_win_at_exe.spl), [CIM](splunk/proc_creation_win_at_exe_cim.spl) | [MDE](sentinel/proc_creation_win_at_exe.kql), [SecurityEvent](sentinel/proc_creation_win_at_exe_securityevent.kql) | medium | experimental |
| at Job Scheduler Used on Linux | [sigma](sigma/proc_creation_lnx_at_command.yml) | [CIM](splunk/proc_creation_lnx_at_command.spl) | [MDE](sentinel/proc_creation_lnx_at_command.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Very old scripts that still call at.exe
- Administrators scheduling one-time maintenance jobs

## Testing
See [tests/](tests/).
