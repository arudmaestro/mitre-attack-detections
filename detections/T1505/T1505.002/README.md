# T1505.002 - Server Software Component: Transport Agent

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1505/002/
- **Platforms:** Linux, Windows

## Summary
Adversaries may abuse Microsoft transport agents to establish persistent access to systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Exchange Transport Agent Installed or Enabled | [sigma](sigma/proc_creation_win_exchange_transport_agent_install.yml) | [raw](splunk/proc_creation_win_exchange_transport_agent_install.spl), [CIM](splunk/proc_creation_win_exchange_transport_agent_install_cim.spl) | [MDE](sentinel/proc_creation_win_exchange_transport_agent_install.kql), [SecurityEvent](sentinel/proc_creation_win_exchange_transport_agent_install_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Exchange administrators installing anti-spam, archiving or signature agents

## Limitations
Cmdlets run inside an Exchange Management Shell session are logged in the Exchange admin audit log (Search-AdminAuditLog) and MSExchange Management event log rather than on a command line. Review the agent DLL path and signer.

## Testing
See [tests/](tests/).
