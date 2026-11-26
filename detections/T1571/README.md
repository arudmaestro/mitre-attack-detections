# T1571 - Non-Standard Port

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1571/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may communicate using a protocol and port pairing that are typically not associated (for example, HTTPS over port 8088 or port 587 as opposed to the traditional port 443).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Shell or Script Host Connected to an Uncommon Port | [sigma](sigma/net_connection_win_script_host_unusual_port.yml) | [raw](splunk/net_connection_win_script_host_unusual_port.spl) | [MDE](sentinel/net_connection_win_script_host_unusual_port.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 3 (raw search). Sentinel: `DeviceNetworkEvents` (Defender for Endpoint).

## Known false positives & tuning
- Administration scripts that connect to databases, SSH or custom application ports

## Limitations
RPC uses dynamic high ports after 135, so PowerShell remoting to some services and WMI connections from scripts can match; add your internal application ports to the filter. Implants inside other processes and C2 over standard ports are not covered; non-standard port use by any process is better seen in firewall / NDR flow data.

## Testing
See [tests/](tests/).
