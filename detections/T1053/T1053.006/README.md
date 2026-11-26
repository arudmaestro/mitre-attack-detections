# T1053.006 - Scheduled Task/Job: Systemd Timers

- **Tactic(s):** Execution, Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1053/006/
- **Platforms:** Linux

## Summary
Adversaries may abuse systemd timers to perform task scheduling for initial or recurring execution of malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Systemd Timer Enabled or Transient Timer Created | [sigma](sigma/proc_creation_lnx_systemd_timer_created.yml) | [CIM](splunk/proc_creation_lnx_systemd_timer_created.spl) | [MDE](sentinel/proc_creation_lnx_systemd_timer_created.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Package installation scripts enabling vendor timers
- Administrators

## Limitations
Timer unit files written directly to /etc/systemd/system/ or ~/.config/systemd/user/ need file telemetry to be seen before they are enabled.

## Testing
See [tests/](tests/).
