# T1049 - System Network Connections Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1049/
- **Platforms:** ESXi, IaaS, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may attempt to get a listing of network connections to or from the compromised system they are currently accessing or from remote systems by querying for information over the network.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Network Connections Discovery Commands | [sigma](sigma/proc_creation_win_network_connections_discovery.yml) | [raw](splunk/proc_creation_win_network_connections_discovery.spl), [CIM](splunk/proc_creation_win_network_connections_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_network_connections_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_network_connections_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators, monitoring agents and support scripts

## Limitations
Common in normal use. Use for hunting or correlate with other discovery activity from the same host and user.

## Testing
See [tests/](tests/).
