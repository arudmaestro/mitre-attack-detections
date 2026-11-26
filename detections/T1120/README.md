# T1120 - Peripheral Device Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1120/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to gather information about attached peripheral devices and components connected to a computer system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Peripheral and Drive Discovery on Windows | [sigma](sigma/proc_creation_win_peripheral_device_discovery.yml) | [raw](splunk/proc_creation_win_peripheral_device_discovery.spl), [CIM](splunk/proc_creation_win_peripheral_device_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_peripheral_device_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_peripheral_device_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Inventory, support and device-management tools

## Limitations
Common in normal administration; use for hunting or correlation with other discovery.

## Testing
See [tests/](tests/).
