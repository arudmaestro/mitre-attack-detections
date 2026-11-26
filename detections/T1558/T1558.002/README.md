# T1558.002 - Steal or Forge Kerberos Tickets: Silver Ticket

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1558/002/
- **Platforms:** Windows

## Summary
Adversaries who have the password hash of a target service account (e.g.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Silver Ticket Forging Command on Windows | [sigma](sigma/proc_creation_win_silver_ticket_tools.yml) | [raw](splunk/proc_creation_win_silver_ticket_tools.spl), [CIM](splunk/proc_creation_win_silver_ticket_tools_cim.spl) | [MDE](sentinel/proc_creation_win_silver_ticket_tools.kql), [SecurityEvent](sentinel/proc_creation_win_silver_ticket_tools_securityevent.kql) | high | experimental |
| Silver Ticket Forged with Impacket ticketer | [sigma](sigma/proc_creation_lnx_impacket_ticketer_silver.yml) | [CIM](splunk/proc_creation_lnx_impacket_ticketer_silver.spl) | [MDE](sentinel/proc_creation_lnx_impacket_ticketer_silver.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
Silver tickets are presented directly to the service and never reach a domain controller, so DC logs show nothing. On the target, a logon (4624/4634) with a Kerberos ticket that has no 4769 on any DC for that account and service is the signal; PAC validation and Defender for Identity help. Rotate service account and computer passwords regularly.

## Testing
See [tests/](tests/).
