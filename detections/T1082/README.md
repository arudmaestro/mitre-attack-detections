# T1082 - System Information Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1082/
- **Platforms:** ESXi, IaaS, Linux, macOS, Network Devices, Windows

## Summary
An adversary may attempt to get detailed information about the operating system and hardware, including version, patches, hotfixes, service packs, and architecture.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| System Information Discovery on Windows | [sigma](sigma/proc_creation_win_system_information_discovery.yml) | [raw](splunk/proc_creation_win_system_information_discovery.spl), [CIM](splunk/proc_creation_win_system_information_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_system_information_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_system_information_discovery_securityevent.kql) | low | experimental |
| System Information Discovery on Linux | [sigma](sigma/proc_creation_lnx_system_information_discovery.yml) | [CIM](splunk/proc_creation_lnx_system_information_discovery.spl) | [MDE](sentinel/proc_creation_lnx_system_information_discovery.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators, inventory and support tools
- Installers, package managers and monitoring agents

## Limitations
Extremely common in normal use. Use for hunting, or correlate several discovery commands from the same host and user within a few minutes.

## Testing
See [tests/](tests/).
