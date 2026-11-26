# T1569.003 - System Services: Systemctl

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1569/003/
- **Platforms:** Linux

## Summary
Adversaries may abuse systemctl to execute commands or programs.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Command Run as a Transient systemd Unit from a Temp Folder or Shell | [sigma](sigma/proc_creation_lnx_systemd_run_suspicious_command.yml) | [CIM](splunk/proc_creation_lnx_systemd_run_suspicious_command.spl) | [MDE](sentinel/proc_creation_lnx_systemd_run_suspicious_command.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and automation running ad-hoc jobs with systemd-run

## Limitations
Services started with systemctl start / enable from unit files are covered by the unit-file rule in T1543.002. Commands started through the D-Bus API of systemd start no systemd-run process.

## Testing
See [tests/](tests/).
