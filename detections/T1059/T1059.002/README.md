# T1059.002 - Command and Scripting Interpreter: AppleScript

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1059/002/
- **Platforms:** macOS

## Summary
Adversaries abuse AppleScript to run commands and interact with macOS applications. Inline osascript calling 'do shell script' bridges AppleScript to the shell.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| AppleScript Executing Shell Command via osascript | [sigma](sigma/proc_creation_macos_osascript_do_shell_script.yml) | [CIM](splunk/proc_creation_macos_osascript_do_shell_script.spl) | [MDE](sentinel/proc_creation_macos_osascript_do_shell_script.kql) | experimental |

## Required data sources
CIM `Endpoint.Processes` populated from your macOS endpoint logs; Sentinel `DeviceProcessEvents` (MDE for macOS).

The Splunk search uses the CIM `Endpoint.Processes` data model because raw field names depend on your Linux/macOS logging agent. Map it to your own raw events if needed.

## Known false positives & tuning
- Admin and automation scripts that use do shell script

## Testing
See [tests/](tests/).
