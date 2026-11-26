# T1059.010 - Command and Scripting Interpreter: AutoHotKey & AutoIT

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/010/
- **Platforms:** Windows

## Summary
Adversaries may execute commands and perform malicious tasks using AutoIT and AutoHotKey automation scripts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AutoHotkey or AutoIt Script Execution | [sigma](sigma/proc_creation_win_autohotkey_autoit_execution.yml) | [raw](splunk/proc_creation_win_autohotkey_autoit_execution.spl), [CIM](splunk/proc_creation_win_autohotkey_autoit_execution_cim.spl) | [MDE](sentinel/proc_creation_win_autohotkey_autoit_execution.kql), [SecurityEvent](sentinel/proc_creation_win_autohotkey_autoit_execution_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users and IT staff using AutoHotkey or AutoIt for automation

## Limitations
Compiled AutoHotkey/AutoIt scripts run as standalone executables and do not show these names; file analysis (YARA for the AutoIt/AHK script resource) covers them.

## Testing
See [tests/](tests/).
