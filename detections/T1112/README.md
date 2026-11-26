# T1112 - Modify Registry

- **Tactic(s):** Defense Impairment, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1112/
- **Platforms:** Windows

## Summary
Adversaries may interact with the Windows Registry as part of a variety of other techniques to aid in defense evasion, persistence, and execution.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Security-Relevant Registry Value Changed from the Command Line | [sigma](sigma/proc_creation_win_security_registry_value_modified.yml) | [raw](splunk/proc_creation_win_security_registry_value_modified.spl), [CIM](splunk/proc_creation_win_security_registry_value_modified_cim.spl) | [MDE](sentinel/proc_creation_win_security_registry_value_modified.kql), [SecurityEvent](sentinel/proc_creation_win_security_registry_value_modified_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators or management tools changing these settings intentionally

## Limitations
Changes made through Group Policy or the registry API are only visible with registry telemetry (Sysmon EID 13, DeviceRegistryEvents). Registry rules are not yet supported by this project's build step.

## Testing
See [tests/](tests/).
