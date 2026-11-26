# T1564.004 - Hide Artifacts: NTFS File Attributes

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/004/
- **Platforms:** Windows

## Summary
Adversaries may use NTFS file attributes to hide their malicious data in order to evade detection.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Alternate Data Stream Written or Read with PowerShell | [sigma](sigma/proc_creation_win_alternate_data_stream_powershell.yml) | [raw](splunk/proc_creation_win_alternate_data_stream_powershell.spl), [CIM](splunk/proc_creation_win_alternate_data_stream_powershell_cim.spl) | [MDE](sentinel/proc_creation_win_alternate_data_stream_powershell.kql), [SecurityEvent](sentinel/proc_creation_win_alternate_data_stream_powershell_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administration scripts that store metadata in streams

## Limitations
Streams written with cmd redirection (type file > host.txt:payload), by programs through the API, or with other tools (esentutl, makecab, certutil) are not covered; Sysmon EID 15 (FileCreateStreamHash) records every new stream with its hash but is not a data source of this project yet.

## Testing
See [tests/](tests/).
