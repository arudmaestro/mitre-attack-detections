# T1021.005 - Remote Services: VNC

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/005/
- **Platforms:** Linux, Windows, macOS

## Summary
Adversaries may use Valid Accounts to remotely control machines using Virtual Network Computing (VNC).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Network Connection on VNC Ports | [sigma](sigma/net_connection_win_vnc_port.yml) | [raw](splunk/net_connection_win_vnc_port.spl) | [MDE](sentinel/net_connection_win_vnc_port.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 3 (raw search). Sentinel: `DeviceNetworkEvents` (Defender for Endpoint).

## Known false positives & tuning
- Approved VNC remote support tools and jump hosts

## Limitations
Allowlist approved VNC servers and support tools. VNC on non-standard ports is not covered. Sysmon must log network connections (EID 3) for the process involved.

## Testing
See [tests/](tests/).
