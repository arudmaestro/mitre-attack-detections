# T1114.001 - Email Collection: Local Email Collection

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1114/001/
- **Platforms:** Windows

## Summary
Adversaries may target user email on local systems to collect sensitive information.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Outlook Data File (.pst/.ost) Accessed Outside Outlook | [sigma](sigma/proc_creation_win_outlook_data_file_access.yml) | [raw](splunk/proc_creation_win_outlook_data_file_access.spl), [CIM](splunk/proc_creation_win_outlook_data_file_access_cim.spl) | [MDE](sentinel/proc_creation_win_outlook_data_file_access.kql), [SecurityEvent](sentinel/proc_creation_win_outlook_data_file_access_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Mailbox migration or backup tools
- Users moving their own PST archives

## Limitations
Reading mailbox files through APIs or copying them in Explorer does not create these command lines; file-access auditing (4663) or EDR file events on *.pst/*.ost cover those.

## Testing
See [tests/](tests/).
