# T1016.001 - System Network Configuration Discovery: Internet Connection Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1016/001/
- **Platforms:** Windows, Linux, macOS, ESXi

## Summary
Adversaries may check for Internet connectivity on compromised systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Public IP or Internet Connectivity Lookup Service in Command Line | [sigma](sigma/proc_creation_win_public_ip_lookup.yml) | [raw](splunk/proc_creation_win_public_ip_lookup.spl), [CIM](splunk/proc_creation_win_public_ip_lookup_cim.spl) | [MDE](sentinel/proc_creation_win_public_ip_lookup.kql), [SecurityEvent](sentinel/proc_creation_win_public_ip_lookup_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- IT scripts and VPN or monitoring tools that check the public IP

## Limitations
Malware that resolves these domains in code is better caught with DNS or proxy logs (DnsEvents, DeviceNetworkEvents RemoteUrl, Splunk Network_Resolution).

## Testing
See [tests/](tests/).
