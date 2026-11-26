# T1546.007 - Event Triggered Execution: Netsh Helper DLL

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/007/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence by executing malicious content triggered by Netsh Helper DLLs.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Netsh Helper DLL Added | [sigma](sigma/proc_creation_win_netsh_add_helper.yml) | [raw](splunk/proc_creation_win_netsh_add_helper.spl), [CIM](splunk/proc_creation_win_netsh_add_helper_cim.spl) | [MDE](sentinel/proc_creation_win_netsh_add_helper.kql), [SecurityEvent](sentinel/proc_creation_win_netsh_add_helper_securityevent.kql) | high | experimental |
| Netsh Helper DLL Registered from a User-Writable Folder | [sigma](sigma/registry_set_win_netsh_helper_user_path.yml) | [raw](splunk/registry_set_win_netsh_helper_user_path.spl), [CIM](splunk/registry_set_win_netsh_helper_user_path_cim.spl) | [MDE](sentinel/registry_set_win_netsh_helper_user_path.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Rare: VPN or network software registering a helper
- None expected

## Limitations
A helper DLL placed in System32 by an administrator-level attacker is only caught by the netsh add helper rule or by reviewing new values under HKLM\SOFTWARE\Microsoft\NetSh.

## Testing
See [tests/](tests/).
