# T1030 - Data Transfer Size Limits

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1030/
- **Platforms:** Linux, macOS, Windows, ESXi

## Summary
An adversary may exfiltrate data in fixed size chunks instead of whole files or limit packet sizes below certain thresholds.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Archive Split into Fixed-Size Volumes with 7-Zip or RAR | [sigma](sigma/proc_creation_win_archive_split_into_volumes.yml) | [raw](splunk/proc_creation_win_archive_split_into_volumes.spl), [CIM](splunk/proc_creation_win_archive_split_into_volumes_cim.spl) | [MDE](sentinel/proc_creation_win_archive_split_into_volumes.kql), [SecurityEvent](sentinel/proc_creation_win_archive_split_into_volumes_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users or backup jobs splitting large archives

## Limitations
Splitting with other tools (Linux split, PowerShell, custom code) and rate-limited uploads are not covered; network volume analytics (many similar-size transfers to one destination) complement this rule.

## Testing
See [tests/](tests/).
