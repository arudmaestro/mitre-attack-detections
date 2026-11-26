# T1070.005 - Indicator Removal: Network Share Connection Removal

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/005/
- **Platforms:** Windows

## Summary
Adversaries may remove share connections that are no longer useful in order to clean up traces of their operation.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Network Share Connection or Share Removed via net | [sigma](sigma/proc_creation_win_network_share_connection_removed.yml) | [raw](splunk/proc_creation_win_network_share_connection_removed.spl), [CIM](splunk/proc_creation_win_network_share_connection_removed_cim.spl) | [MDE](sentinel/proc_creation_win_network_share_connection_removed.kql), [SecurityEvent](sentinel/proc_creation_win_network_share_connection_removed_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users and logon scripts disconnecting mapped drives

## Limitations
Common for mapped-drive housekeeping. Higher fidelity when the removed connection is an admin share (C$, ADMIN$, IPC$) or follows remote execution.

## Testing
See [tests/](tests/).
