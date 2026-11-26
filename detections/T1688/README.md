# T1688 - Safe Mode Boot

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1688/
- **Platforms:** Windows

## Summary
Adversaries may abuse Windows safe mode to disable endpoint defenses.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Safe Mode Boot Configured with bcdedit | [sigma](sigma/proc_creation_win_bcdedit_safeboot.yml) | [raw](splunk/proc_creation_win_bcdedit_safeboot.spl), [CIM](splunk/proc_creation_win_bcdedit_safeboot_cim.spl) | [MDE](sentinel/proc_creation_win_bcdedit_safeboot.kql), [SecurityEvent](sentinel/proc_creation_win_bcdedit_safeboot_securityevent.kql) | high | experimental |
| Service Registered to Start in Safe Mode | [sigma](sigma/registry_set_win_service_added_to_safe_mode.yml) | [raw](splunk/registry_set_win_service_added_to_safe_mode.spl), [CIM](splunk/registry_set_win_service_added_to_safe_mode_cim.spl) | [MDE](sentinel/registry_set_win_service_added_to_safe_mode.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Administrators troubleshooting drivers
- Security products and drivers that register themselves for safe mode

## Limitations
bcdedit /deletevalue safeboot (leaving safe mode) also matches the first rule. msconfig and the System Configuration UI write the same BCD setting without bcdedit.

## Testing
See [tests/](tests/).
