# T1010 - Application Window Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1010/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to get a listing of open application windows.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Application Window Discovery via PowerShell MainWindowTitle | [sigma](sigma/proc_creation_win_powershell_window_title_discovery.yml) | [raw](splunk/proc_creation_win_powershell_window_title_discovery.spl), [CIM](splunk/proc_creation_win_powershell_window_title_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_window_title_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_window_title_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrative and monitoring scripts

## Limitations
Scripts that run from a .ps1 file do not expose the property on the command line; enable PowerShell Script Block Logging (Event 4104) for that case.

## Testing
See [tests/](tests/).
