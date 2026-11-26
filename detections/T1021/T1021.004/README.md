# T1021.004 - Remote Services: SSH

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/004/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may use Valid Accounts to log into remote machines using Secure Shell (SSH).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Scripted SSH Login via sshpass or Disabled Host Key Checking | [sigma](sigma/proc_creation_lnx_ssh_automated_login.yml) | [CIM](splunk/proc_creation_lnx_ssh_automated_login.spl) | [MDE](sentinel/proc_creation_lnx_ssh_automated_login.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Automation, CI/CD and configuration management jobs

## Limitations
Inbound SSH logons are better monitored in authentication logs (sshd 'Accepted' messages, Linux Syslog in Sentinel, linux_secure in Splunk) by source, user and time.

## Testing
See [tests/](tests/).
