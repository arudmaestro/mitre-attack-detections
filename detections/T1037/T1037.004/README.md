# T1037.004 - Boot or Logon Initialization Scripts: RC Scripts

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1037/004/
- **Platforms:** macOS, Linux, Network Devices, ESXi

## Summary
Adversaries may establish persistence by modifying RC scripts, which are executed during a Unix-like system’s startup.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Command Line Referencing rc.local or rc.common | [sigma](sigma/proc_creation_lnx_rc_local_reference.yml) | [CIM](splunk/proc_creation_lnx_rc_local_reference.spl) | [MDE](sentinel/proc_creation_lnx_rc_local_reference.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators editing or checking boot scripts

## Limitations
Fires on any reference, including read-only checks. File-change telemetry on /etc/rc.local (auditd watch, DeviceFileEvents) gives higher fidelity for modifications.

## Testing
See [tests/](tests/).
