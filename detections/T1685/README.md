# T1685 - Disable or Modify Tools

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1685/
- **Platforms:** Containers, ESXi, IaaS, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may disable, degrade, or tamper with security tools or applications (e.g., endpoint detection and response (EDR) tools, intrusion detection systems (IDS), antivirus, logging agents, sensors, etc.) to impair or reduce visibility of defensive capabilities.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Security Product Service Stopped, Disabled or Deleted | [sigma](sigma/proc_creation_win_security_service_stopped.yml) | [raw](splunk/proc_creation_win_security_service_stopped.spl), [CIM](splunk/proc_creation_win_security_service_stopped_cim.spl) | [MDE](sentinel/proc_creation_win_security_service_stopped.kql), [SecurityEvent](sentinel/proc_creation_win_security_service_stopped_securityevent.kql) | high | experimental |
| Microsoft Defender Exclusion Added with PowerShell | [sigma](sigma/proc_creation_win_defender_exclusion_added.yml) | [raw](splunk/proc_creation_win_defender_exclusion_added.spl), [CIM](splunk/proc_creation_win_defender_exclusion_added_cim.spl) | [MDE](sentinel/proc_creation_win_defender_exclusion_added.kql), [SecurityEvent](sentinel/proc_creation_win_defender_exclusion_added_securityevent.kql) | high | experimental |
| Microsoft Defender Exclusion Added in the Registry | [sigma](sigma/registry_set_win_defender_exclusion_added.yml) | [raw](splunk/registry_set_win_defender_exclusion_added.spl), [CIM](splunk/registry_set_win_defender_exclusion_added_cim.spl) | [MDE](sentinel/registry_set_win_defender_exclusion_added.kql) | medium | experimental |
| Security Agent Service Stopped or Disabled on Linux | [sigma](sigma/proc_creation_lnx_security_agent_stopped.yml) | [CIM](splunk/proc_creation_lnx_security_agent_stopped.spl) | [MDE](sentinel/proc_creation_lnx_security_agent_stopped.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Product upgrades and uninstallers run by IT
- Software installers and IT adding documented exclusions (prefer Intune / GPO)
- Group Policy / Intune exclusion deployment and security-product installers
- Agent upgrades and maintenance by IT

## Limitations
Tampering through drivers (BYOVD EDR killers), killing processes with other tools, and changing agent configuration files are not covered; use the products' own tamper protection and their 'sensor offline' / tamper alerts, and watch for hosts that stop sending telemetry. Security-relevant registry values changed from the command line (DisableRealtimeMonitoring ...) are covered by the T1112 rule.

## Testing
See [tests/](tests/).
