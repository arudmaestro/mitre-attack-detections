# T1124 - System Time Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1124/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
An adversary may gather the system time and/or time zone settings from a local or remote system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| System Time Discovery on Windows | [sigma](sigma/proc_creation_win_system_time_discovery.yml) | [raw](splunk/proc_creation_win_system_time_discovery.spl), [CIM](splunk/proc_creation_win_system_time_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_system_time_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_system_time_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and time-sync troubleshooting

## Limitations
Common in normal use; PowerShell Get-Date and API calls are not covered. Use for hunting or correlation.

## Testing
See [tests/](tests/).
