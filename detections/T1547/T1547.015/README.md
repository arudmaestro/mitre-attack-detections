# T1547.015 - Boot or Logon Autostart Execution: Login Items

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/015/
- **Platforms:** macOS

## Summary
Adversaries may add login items to execute upon user login to gain persistence or escalate privileges.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Login Item Added with osascript | [sigma](sigma/proc_creation_macos_login_item_added_osascript.yml) | [CIM](splunk/proc_creation_macos_login_item_added_osascript.spl) | [MDE](sentinel/proc_creation_macos_login_item_added_osascript.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Installers and setup scripts that add their application to login items

## Limitations
Login items added through the Service Management (SMAppService / SMLoginItemSetEnabled) or Shared File List APIs start no osascript process. On macOS 13+ every new login or background item is recorded as a BTM event in the unified log / Endpoint Security (ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD); collect those where your EDR exposes them.

## Testing
See [tests/](tests/).
