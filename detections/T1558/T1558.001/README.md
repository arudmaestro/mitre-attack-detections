# T1558.001 - Steal or Forge Kerberos Tickets: Golden Ticket

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1558/001/
- **Platforms:** Windows

## Summary
Adversaries who have the KRBTGT account password hash may forge Kerberos ticket-granting tickets (TGT), also known as a golden ticket.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Golden Ticket Forging Command on Windows | [sigma](sigma/proc_creation_win_golden_ticket_tools.yml) | [raw](splunk/proc_creation_win_golden_ticket_tools.spl), [CIM](splunk/proc_creation_win_golden_ticket_tools_cim.spl) | [MDE](sentinel/proc_creation_win_golden_ticket_tools.kql), [SecurityEvent](sentinel/proc_creation_win_golden_ticket_tools_securityevent.kql) | high | experimental |
| Golden Ticket Forged with Impacket ticketer | [sigma](sigma/proc_creation_lnx_impacket_ticketer_golden.yml) | [CIM](splunk/proc_creation_lnx_impacket_ticketer_golden.spl) | [MDE](sentinel/proc_creation_lnx_impacket_ticketer_golden.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
Forging happens offline, so the attacker's command line is often not visible. On domain controllers, look for service tickets (4769) whose account has no matching TGT request (4768), tickets with lifetimes beyond your domain policy, and 4769 events with unusual encryption types; Defender for Identity detects most golden tickets. Rotate the KRBTGT password twice after a domain compromise.

## Testing
See [tests/](tests/).
