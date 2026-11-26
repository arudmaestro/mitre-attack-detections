# T1216.002 - System Script Proxy Execution: SyncAppvPublishingServer

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1216/002/
- **Platforms:** Windows

## Summary
Adversaries may abuse SyncAppvPublishingServer.vbs to proxy execution of malicious PowerShell commands.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| SyncAppvPublishingServer Used to Run PowerShell | [sigma](sigma/proc_creation_win_syncappvpublishingserver_command.yml) | [raw](splunk/proc_creation_win_syncappvpublishingserver_command.spl), [CIM](splunk/proc_creation_win_syncappvpublishingserver_command_cim.spl) | [MDE](sentinel/proc_creation_win_syncappvpublishingserver_command.kql), [SecurityEvent](sentinel/proc_creation_win_syncappvpublishingserver_command_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- App-V publishing refreshes with unusual arguments (rare)

## Testing
See [tests/](tests/).
