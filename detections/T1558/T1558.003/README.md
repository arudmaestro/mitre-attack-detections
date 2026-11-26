# T1558.003 - Steal or Forge Kerberos Tickets: Kerberoasting

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1558/003/
- **Platforms:** Windows

## Summary
Adversaries may abuse a valid Kerberos ticket-granting ticket (TGT) or sniff network traffic to obtain a ticket-granting service (TGS) ticket that may be vulnerable to Brute Force.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kerberos Service Ticket Requested with RC4 Encryption (4769) | [sigma](sigma/win_security_kerberos_rc4_service_ticket.yml) | [raw](splunk/win_security_kerberos_rc4_service_ticket.spl) | [SecurityEvent](sentinel/win_security_kerberos_rc4_service_ticket.kql) | medium | experimental |
| Kerberoasting: RC4 Service Tickets for Many Services from One Account | [sigma](sigma/win_security_kerberoasting_many_services.yml) | [raw](splunk/win_security_kerberoasting_many_services.spl) | [SecurityEvent](sentinel/win_security_kerberoasting_many_services.kql) | high | experimental |
| Kerberoasting Tool Command Line on Windows | [sigma](sigma/proc_creation_win_kerberoasting_tools.yml) | [raw](splunk/proc_creation_win_kerberoasting_tools.spl), [CIM](splunk/proc_creation_win_kerberoasting_tools_cim.spl) | [MDE](sentinel/proc_creation_win_kerberoasting_tools.kql), [SecurityEvent](sentinel/proc_creation_win_kerberoasting_tools_securityevent.kql) | high | experimental |
| Kerberoasting with Impacket GetUserSPNs | [sigma](sigma/proc_creation_lnx_impacket_getuserspns_request.yml) | [CIM](splunk/proc_creation_lnx_impacket_getuserspns_request.spl) | [MDE](sentinel/proc_creation_lnx_impacket_getuserspns_request.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Legacy applications and services that still only support RC4
- Vulnerability scanners and monitoring tools that touch many legacy RC4 services
- Penetration tests and red-team exercises

## Limitations
Needs 'Audit Kerberos Service Ticket Operations' on domain controllers. RC4 tickets are the classic sign because RC4 hashes crack fastest; in domains that still use RC4 for some services, exclude those service names. Attackers can also request AES tickets (slower to crack), which this rule does not flag; accounts with SPNs and weak passwords remain the root cause - use gMSAs or long random passwords and set msDS-SupportedEncryptionTypes to AES only. In Sentinel, TicketEncryptionType is not a SecurityEvent column; the query extracts it from EventData.

## Testing
See [tests/](tests/).
