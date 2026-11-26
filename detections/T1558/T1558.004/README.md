# T1558.004 - Steal or Forge Kerberos Tickets: AS-REP Roasting

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1558/004/
- **Platforms:** Windows

## Summary
Adversaries may reveal credentials of accounts that have disabled Kerberos preauthentication by Password Cracking Kerberos messages.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kerberos TGT Issued Without Pre-Authentication (4768) | [sigma](sigma/win_security_kerberos_tgt_without_preauth.yml) | [raw](splunk/win_security_kerberos_tgt_without_preauth.spl) | [SecurityEvent](sentinel/win_security_kerberos_tgt_without_preauth.kql) | medium | experimental |
| AS-REP Roasting Tool Command Line on Windows | [sigma](sigma/proc_creation_win_asreproast_tools.yml) | [raw](splunk/proc_creation_win_asreproast_tools.spl), [CIM](splunk/proc_creation_win_asreproast_tools_cim.spl) | [MDE](sentinel/proc_creation_win_asreproast_tools.kql), [SecurityEvent](sentinel/proc_creation_win_asreproast_tools_securityevent.kql) | high | experimental |
| AS-REP Roasting with Impacket GetNPUsers | [sigma](sigma/proc_creation_lnx_impacket_getnpusers.yml) | [CIM](splunk/proc_creation_lnx_impacket_getnpusers.spl) | [MDE](sentinel/proc_creation_lnx_impacket_getnpusers.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Accounts that legitimately have pre-authentication disabled (some Unix/Kerberos interoperability setups); list and remove them
- Penetration tests and red-team exercises

## Limitations
Needs 'Audit Kerberos Authentication Service' on domain controllers. In Sentinel, PreAuthType is not a SecurityEvent column; the query extracts it from EventData. The real fix is to find accounts with DONT_REQ_PREAUTH (Get-ADUser -Filter 'DoesNotRequirePreAuth -eq $true') and turn pre-authentication back on.

## Testing
See [tests/](tests/).
