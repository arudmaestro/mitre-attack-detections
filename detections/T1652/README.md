# T1652 - Device Driver Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1652/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to enumerate local device drivers on a victim host.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Device Drivers Enumerated on Windows | [sigma](sigma/proc_creation_win_device_driver_discovery.yml) | [raw](splunk/proc_creation_win_device_driver_discovery.spl), [CIM](splunk/proc_creation_win_device_driver_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_device_driver_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_device_driver_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Inventory, support and driver update tools

## Limitations
Driver lists read through APIs (EnumDeviceDrivers, NtQuerySystemInformation) are not covered. On Linux and macOS, lsmod / kextstat are too common to alert on.

## Testing
See [tests/](tests/).
