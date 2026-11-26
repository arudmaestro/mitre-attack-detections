# T1137.002 - Office Application Startup: Office Test

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1137/002/
- **Platforms:** Windows, Office Suite

## Summary
Adversaries may abuse the Microsoft Office "Office Test" Registry key to obtain persistence on a compromised system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Office Test Registry Key Referenced | [sigma](sigma/proc_creation_win_office_test_registry_key.yml) | [raw](splunk/proc_creation_win_office_test_registry_key.spl), [CIM](splunk/proc_creation_win_office_test_registry_key_cim.spl) | [MDE](sentinel/proc_creation_win_office_test_registry_key.kql), [SecurityEvent](sentinel/proc_creation_win_office_test_registry_key_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- None expected

## Limitations
Keys written through the registry API need registry telemetry (Sysmon EID 12/13, DeviceRegistryEvents).

## Testing
See [tests/](tests/).
