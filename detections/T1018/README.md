# T1018 - Remote System Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1018/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may attempt to get a listing of other systems by IP address, hostname, or other logical identifier on a network that may be used for Lateral Movement from the current system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Remote System Discovery via net or nltest | [sigma](sigma/proc_creation_win_remote_system_discovery.yml) | [raw](splunk/proc_creation_win_remote_system_discovery.spl), [CIM](splunk/proc_creation_win_remote_system_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_remote_system_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_remote_system_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and IT inventory scripts

## Limitations
Common in administration; nltest from a regular workstation user is more suspicious than net view. Correlate with other discovery activity.

## Testing
See [tests/](tests/).
