# T1057 - Process Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1057/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may attempt to get information about running processes on a system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Process Discovery via tasklist or WMIC | [sigma](sigma/proc_creation_win_process_discovery.yml) | [raw](splunk/proc_creation_win_process_discovery.spl), [CIM](splunk/proc_creation_win_process_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_process_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_process_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators, support staff and monitoring scripts

## Limitations
Very common in normal use; use for hunting or correlation. PowerShell Get-Process is not included because it is used constantly by legitimate scripts.

## Testing
See [tests/](tests/).
