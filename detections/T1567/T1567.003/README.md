# T1567.003 - Exfiltration Over Web Service: Exfiltration to Text Storage Sites

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1567/003/
- **Platforms:** Linux, macOS, Windows, ESXi

## Summary
Adversaries may exfiltrate data to text storage sites instead of their primary command and control channel.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Text Storage Site Referenced on the Command Line on Windows | [sigma](sigma/proc_creation_win_text_storage_site_command_line.yml) | [raw](splunk/proc_creation_win_text_storage_site_command_line.spl), [CIM](splunk/proc_creation_win_text_storage_site_command_line_cim.spl) | [MDE](sentinel/proc_creation_win_text_storage_site_command_line.kql), [SecurityEvent](sentinel/proc_creation_win_text_storage_site_command_line_securityevent.kql) | medium | experimental |
| Text Storage Site Referenced on the Command Line on Linux | [sigma](sigma/proc_creation_lnx_text_storage_site_command_line.yml) | [CIM](splunk/proc_creation_lnx_text_storage_site_command_line.spl) | [MDE](sentinel/proc_creation_lnx_text_storage_site_command_line.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Developers and users opening paste links from the command line or scripts
- Developers using paste sites from the command line

## Limitations
The same command lines appear when payloads are downloaded from paste sites (T1105, T1102). Uploads by programs and browsers need proxy / DNS logs; the domain list needs regular updates.

## Testing
See [tests/](tests/).
