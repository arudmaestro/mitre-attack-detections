# T1566.001 - Phishing: Spearphishing Attachment

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1566/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may send spearphishing emails with a malicious attachment in an attempt to gain access to victim systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Program Started from an Outlook Attachment Folder | [sigma](sigma/proc_creation_win_program_run_from_outlook_attachment_folder.yml) | [raw](splunk/proc_creation_win_program_run_from_outlook_attachment_folder.spl), [CIM](splunk/proc_creation_win_program_run_from_outlook_attachment_folder_cim.spl) | [MDE](sentinel/proc_creation_win_program_run_from_outlook_attachment_folder.kql), [SecurityEvent](sentinel/proc_creation_win_program_run_from_outlook_attachment_folder_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Rare: users running installers received by mail

## Limitations
Script and HTA attachments opened from these folders are detected by the T1204.002 rule (script host from user download folders); Office documents with macros by the T1204.002 / T1059.003 Office child-process rules. Attachments saved elsewhere before opening, and archives extracted to other folders, are not covered. Mail-gateway and Defender for Office 365 logs (EmailAttachmentInfo) show the delivery.

## Testing
See [tests/](tests/).
