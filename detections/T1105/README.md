# T1105 - Ingress Tool Transfer

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1105/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may transfer tools or other files from an external system into a compromised environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| File Download with certutil, bitsadmin or PowerShell WebClient | [sigma](sigma/proc_creation_win_lolbin_file_download.yml) | [raw](splunk/proc_creation_win_lolbin_file_download.spl), [CIM](splunk/proc_creation_win_lolbin_file_download_cim.spl) | [MDE](sentinel/proc_creation_win_lolbin_file_download.kql), [SecurityEvent](sentinel/proc_creation_win_lolbin_file_download_securityevent.kql) | medium | experimental |
| File Downloaded to a Temporary Directory with curl or wget | [sigma](sigma/proc_creation_lnx_download_to_temp.yml) | [CIM](splunk/proc_creation_lnx_download_to_temp.spl) | [MDE](sentinel/proc_creation_lnx_download_to_temp.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Software updaters and admin scripts that download files
- Installers and scripts that download into /tmp

## Limitations
Downloads by browsers, custom tools or other interpreters (Python, Invoke-WebRequest) are not covered; proxy logs and file creation telemetry (Sysmon EID 11 / DeviceFileEvents) complement these rules.

## Testing
See [tests/](tests/).
