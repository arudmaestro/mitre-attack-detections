# T1056.001 - Input Capture: Keylogging

- **Tactic(s):** Collection, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1056/001/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may log user keystrokes to intercept credentials as the user types them.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Keylogging API or Module Referenced in Command Line | [sigma](sigma/proc_creation_win_keylogger_api_in_command_line.yml) | [raw](splunk/proc_creation_win_keylogger_api_in_command_line.spl), [CIM](splunk/proc_creation_win_keylogger_api_in_command_line_cim.spl) | [MDE](sentinel/proc_creation_win_keylogger_api_in_command_line.kql), [SecurityEvent](sentinel/proc_creation_win_keylogger_api_in_command_line_securityevent.kql) | medium | experimental |
| Keyboard Input Device Read or Linux Keylogger Executed | [sigma](sigma/proc_creation_lnx_keylogger_input_device.yml) | [CIM](splunk/proc_creation_lnx_keylogger_input_device.spl) | [MDE](sentinel/proc_creation_lnx_keylogger_input_device.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Accessibility or automation scripts that read keyboard state
- Input-device troubleshooting (evtest, libinput debug-events)

## Limitations
Compiled keyloggers call the APIs in code, so the keywords appear only when used from script command lines. PowerShell Script Block Logging (4104) and EDR API telemetry cover script files and binaries.

## Testing
See [tests/](tests/).
