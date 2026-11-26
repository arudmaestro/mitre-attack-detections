# T1070.007 - Indicator Removal: Clear Network Connection History and Configurations

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/007/
- **Platforms:** Linux, macOS, Windows, Network Devices

## Summary
Adversaries may clear or remove evidence of malicious network connections in order to clean up traces of their operations.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| RDP Connection History Cleared | [sigma](sigma/proc_creation_win_rdp_history_cleared.yml) | [raw](splunk/proc_creation_win_rdp_history_cleared.spl), [CIM](splunk/proc_creation_win_rdp_history_cleared_cim.spl) | [MDE](sentinel/proc_creation_win_rdp_history_cleared.kql), [SecurityEvent](sentinel/proc_creation_win_rdp_history_cleared_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Privacy cleanup tools and administrators

## Limitations
Deletion through the registry API or GUI is visible only with registry telemetry (Sysmon EID 12, DeviceRegistryEvents) on HKCU\Software\Microsoft\Terminal Server Client.

## Testing
See [tests/](tests/).
