# T1574.001 - Hijack Execution Flow: DLL

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/001/
- **Platforms:** Windows

## Summary
Adversaries may abuse dynamic-link library files (DLLs) in order to achieve persistence, escalate privileges, and evade defenses.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| DLL Side-Loading Host Program Running Outside Its Normal Folder | [sigma](sigma/proc_creation_win_sideload_host_outside_system_folder.yml) | [raw](splunk/proc_creation_win_sideload_host_outside_system_folder.spl), [CIM](splunk/proc_creation_win_sideload_host_outside_system_folder_cim.spl) | [MDE](sentinel/proc_creation_win_sideload_host_outside_system_folder.kql), [SecurityEvent](sentinel/proc_creation_win_sideload_host_outside_system_folder_securityevent.kql) | high | experimental |
| Safe DLL Search Mode Disabled | [sigma](sigma/registry_set_win_safe_dll_search_mode_disabled.yml) | [raw](splunk/registry_set_win_safe_dll_search_mode_disabled.spl), [CIM](splunk/registry_set_win_safe_dll_search_mode_disabled_cim.spl) | [MDE](sentinel/registry_set_win_safe_dll_search_mode_disabled.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Windows servicing copies of dism.exe in temporary folders during updates; Windows installed on another drive letter
- None expected

## Limitations
Most side-loading uses third-party signed programs (security, Office and vendor updaters) that this list does not include; image-load telemetry (Sysmon EID 7, DeviceImageLoadEvents) for unsigned DLLs loaded by signed programs from user-writable folders covers more but is not a data source of this project yet. The T1036.005 rule covers system process names (svchost, lsass ...) outside system folders.

## Testing
See [tests/](tests/).
