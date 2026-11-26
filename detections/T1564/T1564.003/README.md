# T1564.003 - Hide Artifacts: Hidden Window

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use hidden windows to conceal malicious activity from the plain sight of users.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| PowerShell Started with a Hidden Window | [sigma](sigma/proc_creation_win_powershell_hidden_window.yml) | [raw](splunk/proc_creation_win_powershell_hidden_window.spl), [CIM](splunk/proc_creation_win_powershell_hidden_window_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_hidden_window.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_hidden_window_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Logon scripts, SCCM/Intune and monitoring agents that start PowerShell hidden

## Limitations
Hidden windows created through APIs (CreateProcess with SW_HIDE, VBScript Run with 0, scheduled tasks set to hidden) leave no command-line flag. conhost.exe --headless (another way to run a console without a window) is detected by the T1202 rule. Expect many matches for the PowerShell rule: build an allowlist of parent processes and scripts before alerting.

## Testing
See [tests/](tests/).
