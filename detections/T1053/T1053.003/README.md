# T1053.003 - Scheduled Task/Job: Cron

- **Tactic(s):** Execution, Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1053/003/
- **Platforms:** Linux, macOS, ESXi

## Summary
Adversaries may abuse the cron utility to perform task scheduling for initial or recurring execution of malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Cron Job Created or Modified | [sigma](sigma/proc_creation_lnx_cron_modification.yml) | [CIM](splunk/proc_creation_lnx_cron_modification.spl) | [MDE](sentinel/proc_creation_lnx_cron_modification.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and configuration management maintaining cron jobs

## Limitations
Files written directly into /etc/cron.d/ by a program (not a command line) need file telemetry (auditd watch, DeviceFileEvents).

## Testing
See [tests/](tests/).
