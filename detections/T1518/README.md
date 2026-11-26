# T1518 - Software Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1518/
- **Platforms:** ESXi, IaaS, Linux, macOS, Windows

## Summary
Adversaries may attempt to get a listing of software and software versions that are installed on a system or in a cloud environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Installed Software Discovery on Windows | [sigma](sigma/proc_creation_win_installed_software_discovery.yml) | [raw](splunk/proc_creation_win_installed_software_discovery.spl), [CIM](splunk/proc_creation_win_installed_software_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_installed_software_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_installed_software_discovery_securityevent.kql) | low | experimental |
| Installed Applications Listed with system_profiler | [sigma](sigma/proc_creation_macos_installed_software_discovery.yml) | [CIM](splunk/proc_creation_macos_installed_software_discovery.spl) | [MDE](sentinel/proc_creation_macos_installed_software_discovery.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Inventory, patch-management and support tools
- Inventory and MDM tools

## Limitations
Very common in normal administration; use for hunting and correlation with other discovery. Linux package listing (dpkg -l, rpm -qa) is too common to alert on.

## Testing
See [tests/](tests/).
