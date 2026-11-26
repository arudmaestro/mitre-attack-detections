# T1090.003 - Proxy: Multi-hop Proxy

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1090/003/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may chain together multiple proxies to disguise the source of malicious traffic.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Tor Executed on Windows | [sigma](sigma/proc_creation_win_tor_execution.yml) | [raw](splunk/proc_creation_win_tor_execution.spl), [CIM](splunk/proc_creation_win_tor_execution_cim.spl) | [MDE](sentinel/proc_creation_win_tor_execution.kql), [SecurityEvent](sentinel/proc_creation_win_tor_execution_securityevent.kql) | medium | experimental |
| Tor Executed on Linux | [sigma](sigma/proc_creation_lnx_tor_execution.yml) | [CIM](splunk/proc_creation_lnx_tor_execution.spl) | [MDE](sentinel/proc_creation_lnx_tor_execution.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Users or researchers with approved Tor use
- Approved Tor relays or research systems

## Limitations
Renamed Tor binaries are not covered by name; network detection of connections to Tor relays (published Tor relay IP lists, ports 9001/9030) complements these rules.

## Testing
See [tests/](tests/).
