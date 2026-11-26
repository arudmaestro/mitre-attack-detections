# T1090.001 - Proxy: Internal Proxy

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1090/001/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may use an internal proxy to direct command and control traffic between two or more systems in a compromised environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Port Forwarding Added with netsh portproxy | [sigma](sigma/proc_creation_win_netsh_portproxy_added.yml) | [raw](splunk/proc_creation_win_netsh_portproxy_added.spl), [CIM](splunk/proc_creation_win_netsh_portproxy_added_cim.spl) | [MDE](sentinel/proc_creation_win_netsh_portproxy_added.kql), [SecurityEvent](sentinel/proc_creation_win_netsh_portproxy_added_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators setting up legitimate port forwarding (e.g. WSL or lab access)

## Limitations
Port forwards created through the registry (HKLM\SYSTEM\CurrentControlSet\Services\PortProxy) or by proxy tools (e.g. SOCKS implants) are not covered.

## Testing
See [tests/](tests/).
