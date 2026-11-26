# T1543.002 - Create or Modify System Process: Systemd Service

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1543/002/
- **Platforms:** Linux

## Summary
Adversaries may create or modify systemd services to repeatedly execute malicious payloads as part of persistence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Systemd Unit File Written from the Command Line | [sigma](sigma/proc_creation_lnx_systemd_unit_written.yml) | [CIM](splunk/proc_creation_lnx_systemd_unit_written.spl) | [MDE](sentinel/proc_creation_lnx_systemd_unit_written.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Configuration management (Ansible, Puppet) and administrators deploying services

## Limitations
Units written by scripts with shell redirection (echo ... > unit) or by programs directly need file monitoring (auditd -w /etc/systemd/system -p wa).

## Testing
See [tests/](tests/).
