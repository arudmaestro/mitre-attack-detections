# T1006 - Direct Volume Access

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1006/
- **Platforms:** Network Devices, Windows

## Summary
Adversaries may directly access a volume to bypass file access controls and file system monitoring.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Raw Disk or Volume Device Access in Command Line | [sigma](sigma/proc_creation_win_raw_volume_access.yml) | [raw](splunk/proc_creation_win_raw_volume_access.spl), [CIM](splunk/proc_creation_win_raw_volume_access_cim.spl) | [MDE](sentinel/proc_creation_win_raw_volume_access.kql), [SecurityEvent](sentinel/proc_creation_win_raw_volume_access_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Disk imaging, backup and forensic tools
- Disk management scripts

## Limitations
Tools that open the raw device internally (without the path on the command line) are not caught; EDR raw-disk-access telemetry covers that case.

## Testing
See [tests/](tests/).
