# T1674 - Input Injection

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1674/
- **Platforms:** Windows, macOS, Linux

## Summary
Adversaries may simulate keystrokes on a victim’s computer by various means to perform any type of action on behalf of the user, such as launching the command interpreter using keyboard shortcuts, typing an inline script to be executed, or interacting directly with a GUI-based application.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Keystrokes Sent with SendKeys from the Command Line | [sigma](sigma/proc_creation_win_sendkeys_command_line.yml) | [raw](splunk/proc_creation_win_sendkeys_command_line.spl), [CIM](splunk/proc_creation_win_sendkeys_command_line_cim.spl) | [MDE](sentinel/proc_creation_win_sendkeys_command_line.kql), [SecurityEvent](sentinel/proc_creation_win_sendkeys_command_line_securityevent.kql) | medium | experimental |
| Keystrokes or Mouse Input Simulated with xdotool | [sigma](sigma/proc_creation_lnx_xdotool_input.yml) | [CIM](splunk/proc_creation_lnx_xdotool_input.spl) | [MDE](sentinel/proc_creation_lnx_xdotool_input.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- UI automation and test scripts
- Desktop automation scripts

## Limitations
Input injected through APIs (SendInput, keybd_event), USB HID devices (rubber ducky) or automation frameworks inside compiled programs leaves no command line.

## Testing
See [tests/](tests/).
