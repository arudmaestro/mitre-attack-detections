# T1036.004 - Masquerading: Masquerade Task or Service

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/004/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to manipulate the name of a task or service to make it appear legitimate or benign.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Scheduled Task Created in the Microsoft\Windows Task Folder via schtasks | [sigma](sigma/proc_creation_win_schtasks_in_microsoft_folder.yml) | [raw](splunk/proc_creation_win_schtasks_in_microsoft_folder.spl), [CIM](splunk/proc_creation_win_schtasks_in_microsoft_folder_cim.spl) | [MDE](sentinel/proc_creation_win_schtasks_in_microsoft_folder.kql), [SecurityEvent](sentinel/proc_creation_win_schtasks_in_microsoft_folder_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Rare: vendor installers that register tasks under \Microsoft\Windows\ with schtasks

## Limitations
Tasks registered through the Task Scheduler API or by dropping XML files do not use schtasks.exe; Windows Security 4698 (task created) with the task name covers those.

## Testing
See [tests/](tests/).
