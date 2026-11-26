# T1548.002 - Abuse Elevation Control Mechanism: Bypass User Account Control

- **Tactic(s):** Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1548/002/
- **Platforms:** Windows

## Summary
Adversaries may bypass UAC mechanisms to elevate process privileges on a system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| UAC Bypass Handler Registered (ms-settings, mscfile, exefile, Folder) | [sigma](sigma/registry_set_win_uac_bypass_shell_open_command.yml) | [raw](splunk/registry_set_win_uac_bypass_shell_open_command.spl), [CIM](splunk/registry_set_win_uac_bypass_shell_open_command_cim.spl) | [MDE](sentinel/registry_set_win_uac_bypass_shell_open_command.kql) | high | experimental |
| Auto-Elevating Windows Program Started a Child Process | [sigma](sigma/proc_creation_win_auto_elevate_binary_child.yml) | [raw](splunk/proc_creation_win_auto_elevate_binary_child.spl), [CIM](splunk/proc_creation_win_auto_elevate_binary_child_cim.spl) | [MDE](sentinel/proc_creation_win_auto_elevate_binary_child.kql), [SecurityEvent](sentinel/proc_creation_win_auto_elevate_binary_child_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Rare: software that re-registers system file handlers (review the writing process)
- Rare: troubleshooting tools started from Event Viewer

## Limitations
UAC bypasses through COM elevation monikers (e.g. ICMLuaUtil, used by many loaders), DLL hijacks of auto-elevating programs and environment-variable tricks do not write these keys; the process rule catches some of them. Setting UAC to 'Always notify' and using standard user accounts blocks most bypasses.

## Testing
See [tests/](tests/).
