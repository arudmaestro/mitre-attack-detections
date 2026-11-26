# T1021.001 - Remote Services: Remote Desktop Protocol

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/001/
- **Platforms:** Windows

## Summary
Adversaries may use Valid Accounts to log into a computer using the Remote Desktop Protocol (RDP).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Remote Desktop Enabled via fDenyTSConnections | [sigma](sigma/proc_creation_win_rdp_enabled_via_registry.yml) | [raw](splunk/proc_creation_win_rdp_enabled_via_registry.spl), [CIM](splunk/proc_creation_win_rdp_enabled_via_registry_cim.spl) | [MDE](sentinel/proc_creation_win_rdp_enabled_via_registry.kql), [SecurityEvent](sentinel/proc_creation_win_rdp_enabled_via_registry_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators enabling RDP via scripts or deployment tools

## Limitations
RDP enabled through Group Policy or the Settings UI does not create this command line; registry-change telemetry (Sysmon EID 13, DeviceRegistryEvents) covers those paths. Successful RDP logons appear as Windows Security 4624 with LogonType 10.

## Testing
See [tests/](tests/).
