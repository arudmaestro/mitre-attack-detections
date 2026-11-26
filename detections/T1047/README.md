# T1047 - Windows Management Instrumentation

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1047/
- **Platforms:** Windows

## Summary
Adversaries abuse WMI to execute commands locally or on remote hosts. Note that wmic.exe is deprecated and removed from newer Windows 11 builds, so also consider PowerShell-based WMI usage (Get-WmiObject, Invoke-CimMethod).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Status |
|------|-------|-----------|----------|--------|
| WMIC Process Call Create | [sigma](sigma/proc_creation_win_wmic_process_call_create.yml) | [raw Sysmon](splunk/proc_creation_win_wmic_process_call_create.spl), [CIM](splunk/proc_creation_win_wmic_process_call_create_cim.spl) | [MDE](sentinel/proc_creation_win_wmic_process_call_create.kql), [SecurityEvent](sentinel/proc_creation_win_wmic_process_call_create_securityevent.kql) | experimental |

## Required data sources
Sysmon EID 1 (Splunk raw search) or CIM `Endpoint.Processes`; Sentinel `DeviceProcessEvents` (MDE) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legacy admin scripts and software deployment tools

## Testing
See [tests/](tests/).
