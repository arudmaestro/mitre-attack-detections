# T1137.004 - Office Application Startup: Outlook Home Page

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1137/004/
- **Platforms:** Windows, Office Suite

## Summary
Adversaries may abuse Microsoft Outlook's Home Page feature to obtain persistence on a compromised system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Outlook Folder Home Page Configured | [sigma](sigma/proc_creation_win_outlook_home_page_set.yml) | [raw](splunk/proc_creation_win_outlook_home_page_set.spl), [CIM](splunk/proc_creation_win_outlook_home_page_set_cim.spl) | [MDE](sentinel/proc_creation_win_outlook_home_page_set.kql), [SecurityEvent](sentinel/proc_creation_win_outlook_home_page_set_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Rare legacy configurations that use Outlook folder home pages

## Limitations
Microsoft disabled folder home pages by default; also check that the EnableRoamingFolderHomepages / disabling policies are in place. Registry API changes need registry telemetry.

## Testing
See [tests/](tests/).
