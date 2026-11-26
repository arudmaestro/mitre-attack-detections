# T1218.002 - System Binary Proxy Execution: Control Panel

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/002/
- **Platforms:** Windows

## Summary
Adversaries may abuse control.exe to proxy execution of malicious payloads.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Control Panel Item Loaded from a User-Writable Folder | [sigma](sigma/proc_creation_win_control_panel_item_from_user_path.yml) | [raw](splunk/proc_creation_win_control_panel_item_from_user_path.spl), [CIM](splunk/proc_creation_win_control_panel_item_from_user_path_cim.spl) | [MDE](sentinel/proc_creation_win_control_panel_item_from_user_path.kql), [SecurityEvent](sentinel/proc_creation_win_control_panel_item_from_user_path_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Software installers that open their own Control Panel item from a temporary folder

## Testing
See [tests/](tests/).
