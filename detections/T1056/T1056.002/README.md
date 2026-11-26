# T1056.002 - Input Capture: GUI Input Capture

- **Tactic(s):** Collection, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1056/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may mimic common operating system GUI components to prompt users for credentials with a seemingly legitimate prompt.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Fake Password Prompt via osascript | [sigma](sigma/proc_creation_macos_osascript_password_prompt.yml) | [CIM](splunk/proc_creation_macos_osascript_password_prompt.spl) | [MDE](sentinel/proc_creation_macos_osascript_password_prompt.kql) | high | experimental |
| Credential Prompt Invoked from PowerShell Command Line | [sigma](sigma/proc_creation_win_powershell_credential_prompt.yml) | [raw](splunk/proc_creation_win_powershell_credential_prompt.spl), [CIM](splunk/proc_creation_win_powershell_credential_prompt_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_credential_prompt.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_credential_prompt_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legitimate admin scripts that prompt for credentials
- Admin scripts that prompt for credentials

## Limitations
Prompts shown from compiled binaries or script files are not visible here; enable PowerShell Script Block Logging (4104) for scripts.

## Testing
See [tests/](tests/).
