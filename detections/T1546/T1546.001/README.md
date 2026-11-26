# T1546.001 - Event Triggered Execution: Change Default File Association

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/001/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence by executing malicious content triggered by a file type association.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| File Association Open Command Set to a Script Host | [sigma](sigma/registry_set_win_file_association_script_command.yml) | [raw](splunk/registry_set_win_file_association_script_command.spl), [CIM](splunk/registry_set_win_file_association_script_command_cim.spl) | [MDE](sentinel/registry_set_win_file_association_script_command.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Applications that register PowerShell or script files with a custom handler

## Limitations
The rule matches the key path with '\shell\open\command\' (not '(Default)'), so it works for both Sysmon and Defender.

## Testing
See [tests/](tests/).
