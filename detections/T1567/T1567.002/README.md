# T1567.002 - Exfiltration Over Web Service: Exfiltration to Cloud Storage

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1567/002/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may exfiltrate data to a cloud storage service rather than over their primary command and control channel.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Rclone Copy or Sync Run on Windows | [sigma](sigma/proc_creation_win_rclone_copy_sync.yml) | [raw](splunk/proc_creation_win_rclone_copy_sync.spl), [CIM](splunk/proc_creation_win_rclone_copy_sync_cim.spl) | [MDE](sentinel/proc_creation_win_rclone_copy_sync.kql), [SecurityEvent](sentinel/proc_creation_win_rclone_copy_sync_securityevent.kql) | high | experimental |
| Rclone Copy or Sync Run on Linux | [sigma](sigma/proc_creation_lnx_rclone_copy_sync.yml) | [CIM](splunk/proc_creation_lnx_rclone_copy_sync.spl) | [MDE](sentinel/proc_creation_lnx_rclone_copy_sync.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Backup jobs that use rclone (allowlist their host, user and remote)

## Limitations
Renamed rclone copies keep their typical arguments (copy/sync with remote:path and --config); hunt for those arguments in other processes too. Uploads with browsers, MEGAsync, cloud sync clients or curl to storage APIs need proxy / DNS logs and CASB data.

## Testing
See [tests/](tests/).
