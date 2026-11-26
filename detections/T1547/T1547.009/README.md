# T1547.009 - Boot or Logon Autostart Execution: Shortcut Modification

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/009/
- **Platforms:** Windows

## Summary
Adversaries may create or modify shortcuts that can execute a program during system boot or user login.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Shortcut Created or Changed from the Command Line | [sigma](sigma/proc_creation_win_shortcut_created_from_command_line.yml) | [raw](splunk/proc_creation_win_shortcut_created_from_command_line.spl), [CIM](splunk/proc_creation_win_shortcut_created_from_command_line_cim.spl) | [MDE](sentinel/proc_creation_win_shortcut_created_from_command_line.kql), [SecurityEvent](sentinel/proc_creation_win_shortcut_created_from_command_line_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Deployment and login scripts that create shortcuts

## Limitations
Shortcuts written by programs or by scripts in files leave no command line; file events for .lnk files in Startup, Desktop and Start Menu folders cover those.

## Testing
See [tests/](tests/).
