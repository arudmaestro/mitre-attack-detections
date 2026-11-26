# T1546.015 - Event Triggered Execution: Component Object Model Hijacking

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/015/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence by executing malicious content triggered by hijacked references to Component Object Model (COM) objects.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| COM Server Registered to a DLL or EXE in a User-Writable Folder | [sigma](sigma/registry_set_win_com_server_user_path.yml) | [raw](splunk/registry_set_win_com_server_user_path.spl), [CIM](splunk/registry_set_win_com_server_user_path_cim.spl) | [MDE](sentinel/registry_set_win_com_server_user_path.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Per-user applications that register COM servers in AppData (Dropbox, Zoom, Slack and similar - add them to the filter)

## Limitations
Hijacks that point to a DLL in a normal-looking folder are not caught; baseline HKCU\Software\Classes\CLSID per host to find new entries.

## Testing
See [tests/](tests/).
