# T1070.006 - Indicator Removal: Timestomp

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/006/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may modify file time attributes to hide new files or changes to existing files.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| File Timestamps Modified with PowerShell | [sigma](sigma/proc_creation_win_powershell_timestomp.yml) | [raw](splunk/proc_creation_win_powershell_timestomp.spl), [CIM](splunk/proc_creation_win_powershell_timestomp_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_timestomp.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_timestomp_securityevent.kql) | medium | experimental |
| File Timestamps Set with touch | [sigma](sigma/proc_creation_lnx_touch_timestamp_change.yml) | [CIM](splunk/proc_creation_lnx_touch_timestamp_change.spl) | [MDE](sentinel/proc_creation_lnx_touch_timestamp_change.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Scripts that preserve or reset timestamps (backups, build tools)
- Build systems and scripts setting reproducible timestamps

## Limitations
Timestomping through APIs (SetFileTime) is visible with Sysmon EID 2 (file creation time changed) or EDR file telemetry.

## Testing
See [tests/](tests/).
