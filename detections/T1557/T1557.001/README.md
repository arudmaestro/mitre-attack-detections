# T1557.001 - Adversary-in-the-Middle: Name Resolution Poisoning and SMB Relay

- **Tactic(s):** Credential Access, Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1557/001/
- **Platforms:** Windows

## Summary
By responding to LLMNR/NBT-NS/mDNS network traffic, adversaries may spoof an authoritative source for name resolution to force communication with an adversary controlled system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Inveigh Name-Resolution Poisoner Executed | [sigma](sigma/proc_creation_win_inveigh.yml) | [raw](splunk/proc_creation_win_inveigh.spl), [CIM](splunk/proc_creation_win_inveigh_cim.spl) | [MDE](sentinel/proc_creation_win_inveigh.kql), [SecurityEvent](sentinel/proc_creation_win_inveigh_securityevent.kql) | high | experimental |
| Responder or NTLM Relay Tool Executed on Linux | [sigma](sigma/proc_creation_lnx_responder_ntlmrelayx.yml) | [CIM](splunk/proc_creation_lnx_responder_ntlmrelayx.spl) | [MDE](sentinel/proc_creation_lnx_responder_ntlmrelayx.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
Poisoning usually runs from an attacker-controlled machine. Network detection is more reliable: LLMNR (UDP 5355) and NBT-NS (UDP 137) answers from hosts that are not DNS servers, or one host answering many different names. Disable LLMNR and NBT-NS by Group Policy and require SMB signing to remove the risk.

## Testing
See [tests/](tests/).
