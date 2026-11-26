# T1518.001 - Software Discovery: Security Software Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1518/001/
- **Platforms:** IaaS, Linux, macOS, Windows

## Summary
Adversaries may attempt to get a listing of security software, configurations, defensive tools, and sensors that are installed on a system or in a cloud environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Security Software Discovery on Windows | [sigma](sigma/proc_creation_win_security_software_discovery.yml) | [raw](splunk/proc_creation_win_security_software_discovery.spl), [CIM](splunk/proc_creation_win_security_software_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_security_software_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_security_software_discovery_securityevent.kql) | low | experimental |
| Security Agent Searched for in Process or File Listings on Linux | [sigma](sigma/proc_creation_lnx_security_software_discovery.yml) | [CIM](splunk/proc_creation_lnx_security_software_discovery.spl) | [MDE](sentinel/proc_creation_lnx_security_software_discovery.kql) | low | experimental |
| Security Agent Searched for in Process or File Listings on macOS | [sigma](sigma/proc_creation_macos_security_software_discovery.yml) | [CIM](splunk/proc_creation_macos_security_software_discovery.spl) | [MDE](sentinel/proc_creation_macos_security_software_discovery.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Inventory, compliance and support tools checking antivirus status
- Administrators and monitoring scripts checking agent health

## Limitations
Discovery through WMI or process-list APIs inside malware leaves no command line. Use these rules for hunting and correlation with other discovery.

## Testing
See [tests/](tests/).
