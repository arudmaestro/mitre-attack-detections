# T1546.013 - Event Triggered Execution: PowerShell Profile

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/013/
- **Platforms:** Windows

## Summary
Adversaries may gain persistence and elevate privileges by executing malicious content triggered by PowerShell profiles.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| PowerShell Profile Written from the Command Line | [sigma](sigma/proc_creation_win_powershell_profile_modified.yml) | [raw](splunk/proc_creation_win_powershell_profile_modified.spl), [CIM](splunk/proc_creation_win_powershell_profile_modified_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_profile_modified.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_profile_modified_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users and setup scripts customising their PowerShell profile

## Limitations
Profile edits made inside an interactive session or a script file leave no command line; PowerShell script block logging (4104) and file monitoring of the profile paths cover those.

## Testing
See [tests/](tests/).
