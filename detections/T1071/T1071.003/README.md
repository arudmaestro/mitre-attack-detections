# T1071.003 - Application Layer Protocol: Mail Protocols

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1071/003/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may communicate using application layer protocols associated with electronic mail delivery to avoid detection/network filtering by blending in with existing traffic.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Outbound SMTP Connection from a Non-Mail Process | [sigma](sigma/net_connection_win_smtp_from_non_mail_process.yml) | [raw](splunk/net_connection_win_smtp_from_non_mail_process.spl) | [MDE](sentinel/net_connection_win_smtp_from_non_mail_process.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 3 (raw search). Sentinel: `DeviceNetworkEvents` (Defender for Endpoint).

## Known false positives & tuning
- Applications, scanners and printers that send email directly (alerting, scan-to-email)

## Limitations
Add your organisation's mail relays, monitoring tools and scan-to-email devices to the filter. Mail C2 over IMAP/POP3 or webmail APIs is not covered.

## Testing
See [tests/](tests/).
