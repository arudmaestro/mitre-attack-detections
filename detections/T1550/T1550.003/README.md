# T1550.003 - Use Alternate Authentication Material: Pass the Ticket

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1550/003/
- **Platforms:** Windows

## Summary
Adversaries may “pass the ticket” using stolen Kerberos tickets to move laterally within an environment, bypassing normal system access controls.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Pass-the-Ticket Tool Command Line | [sigma](sigma/proc_creation_win_pass_the_ticket_tools.yml) | [raw](splunk/proc_creation_win_pass_the_ticket_tools.spl), [CIM](splunk/proc_creation_win_pass_the_ticket_tools_cim.spl) | [MDE](sentinel/proc_creation_win_pass_the_ticket_tools.kql), [SecurityEvent](sentinel/proc_creation_win_pass_the_ticket_tools_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
Tickets imported through the API (in-memory tools, Cobalt Strike kerberos_ticket_use) leave no command line. On domain controllers, tickets used without a matching TGT request (4769 without 4768 for the account/host) and tickets with unusual lifetimes or encryption types point to forged or stolen tickets; Defender for Identity detects many of these.

## Testing
See [tests/](tests/).
