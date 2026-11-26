# T1567.004 - Exfiltration Over Web Service: Exfiltration Over Webhook

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1567/004/
- **Platforms:** ESXi, Linux, macOS, Office Suite, SaaS, Windows

## Summary
Adversaries may exfiltrate data to a webhook endpoint rather than over their primary command and control channel.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Webhook or Bot API URL on the Command Line on Windows | [sigma](sigma/proc_creation_win_webhook_url_command_line.yml) | [raw](splunk/proc_creation_win_webhook_url_command_line.spl), [CIM](splunk/proc_creation_win_webhook_url_command_line_cim.spl) | [MDE](sentinel/proc_creation_win_webhook_url_command_line.kql), [SecurityEvent](sentinel/proc_creation_win_webhook_url_command_line_securityevent.kql) | medium | experimental |
| Webhook or Bot API URL on the Command Line on Linux | [sigma](sigma/proc_creation_lnx_webhook_url_command_line.yml) | [CIM](splunk/proc_creation_lnx_webhook_url_command_line.spl) | [MDE](sentinel/proc_creation_lnx_webhook_url_command_line.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Monitoring and build scripts that post notifications to chat webhooks (allowlist them)
- Monitoring, CI and cron scripts that post notifications to chat webhooks (allowlist them)

## Limitations
Webhook URLs inside scripts or compiled malware leave no command line; proxy / DNS logs for these hosts from servers and from non-browser processes cover more. Other webhook services (Zapier, IFTTT, custom endpoints) are not listed.

## Testing
See [tests/](tests/).
