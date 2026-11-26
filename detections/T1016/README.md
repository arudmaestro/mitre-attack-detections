# T1016 - System Network Configuration Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1016/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may look for details about the network configuration and settings, such as IP and/or MAC addresses, of systems they access or through information discovery of remote systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Network Configuration Discovery Commands | [sigma](sigma/proc_creation_win_network_config_discovery.yml) | [raw](splunk/proc_creation_win_network_config_discovery.spl), [CIM](splunk/proc_creation_win_network_config_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_network_config_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_network_config_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users, help desk and administrators troubleshooting networks

## Limitations
Very common in normal use. Use for hunting, or correlate several discovery commands from the same host and user within a few minutes.

## Testing
See [tests/](tests/).
