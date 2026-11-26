# T1007 - System Service Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1007/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may try to gather information about registered local system services.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| System Service Discovery via sc, tasklist or net | [sigma](sigma/proc_creation_win_service_discovery.yml) | [raw](splunk/proc_creation_win_service_discovery.spl), [CIM](splunk/proc_creation_win_service_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_service_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_service_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and IT management tools
- Software installers checking service state

## Limitations
Discovery commands are common in normal administration. Use as a hunting query or correlate several discovery techniques from one host within a short window.

## Testing
See [tests/](tests/).
