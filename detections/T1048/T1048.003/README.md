# T1048.003 - Exfiltration Over Alternative Protocol: Exfiltration Over Unencrypted Non-C2 Protocol

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1048/003/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may steal data by exfiltrating it over an un-encrypted network protocol other than that of the existing command and control channel.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| File Upload over FTP or TFTP from the Command Line | [sigma](sigma/proc_creation_win_unencrypted_file_upload.yml) | [raw](splunk/proc_creation_win_unencrypted_file_upload.spl), [CIM](splunk/proc_creation_win_unencrypted_file_upload_cim.spl) | [MDE](sentinel/proc_creation_win_unencrypted_file_upload.kql), [SecurityEvent](sentinel/proc_creation_win_unencrypted_file_upload_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legacy file-transfer scripts

## Limitations
Uploads over plain HTTP and custom tools are not covered; firewall or proxy logs for outbound FTP (21), TFTP (69) and HTTP POST volume complement this rule.

## Testing
See [tests/](tests/).
