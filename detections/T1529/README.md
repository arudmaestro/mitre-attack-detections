# T1529 - System Shutdown/Reboot

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1529/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may shut down/reboot systems to interrupt access to, or aid in the destruction of, those systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Forced Shutdown or Reboot on Windows | [sigma](sigma/proc_creation_win_forced_shutdown_reboot.yml) | [raw](splunk/proc_creation_win_forced_shutdown_reboot.spl), [CIM](splunk/proc_creation_win_forced_shutdown_reboot_cim.spl) | [MDE](sentinel/proc_creation_win_forced_shutdown_reboot.kql), [SecurityEvent](sentinel/proc_creation_win_forced_shutdown_reboot_securityevent.kql) | low | experimental |
| Shutdown or Reboot Command on Linux | [sigma](sigma/proc_creation_lnx_shutdown_reboot.yml) | [CIM](splunk/proc_creation_lnx_shutdown_reboot.spl) | [MDE](sentinel/proc_creation_lnx_shutdown_reboot.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators, patching and deployment tools restarting servers
- Administrators and patching tools restarting systems

## Limitations
Restarts are routine. Use these rules for context in incidents and correlate with other impact detections (T1490, T1489, T1486) on the same host. Windows System log 1074 records who initiated a shutdown and why.

## Testing
See [tests/](tests/).
