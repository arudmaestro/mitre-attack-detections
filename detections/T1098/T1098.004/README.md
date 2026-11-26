# T1098.004 - Account Manipulation: SSH Authorized Keys

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1098/004/
- **Platforms:** ESXi, IaaS, Linux, macOS, Network Devices

## Summary
Adversaries may modify the SSH authorized_keys file to maintain persistence on a victim host.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| SSH authorized_keys Referenced in Command Line | [sigma](sigma/proc_creation_lnx_ssh_authorized_keys_modified.yml) | [CIM](splunk/proc_creation_lnx_ssh_authorized_keys_modified.spl) | [MDE](sentinel/proc_creation_lnx_ssh_authorized_keys_modified.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- ssh-copy-id and configuration management deploying keys
- Users viewing their own keys

## Limitations
Keys written by programs without a command line (e.g. an implant writing the file) need file-change telemetry (auditd watch on authorized_keys, DeviceFileEvents).

## Testing
See [tests/](tests/).
