# T1219.001 - Remote Access Tools: IDE Tunneling

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1219/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may abuse Integrated Development Environment (IDE) software with remote development features to establish an interactive command and control channel on target systems within a network.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| IDE or Dev Tunnel Started on Windows | [sigma](sigma/proc_creation_win_ide_tunnel.yml) | [raw](splunk/proc_creation_win_ide_tunnel.spl), [CIM](splunk/proc_creation_win_ide_tunnel_cim.spl) | [MDE](sentinel/proc_creation_win_ide_tunnel.kql), [SecurityEvent](sentinel/proc_creation_win_ide_tunnel_securityevent.kql) | medium | experimental |
| IDE or Dev Tunnel Started on Linux | [sigma](sigma/proc_creation_lnx_ide_tunnel.yml) | [CIM](splunk/proc_creation_lnx_ide_tunnel.spl) | [MDE](sentinel/proc_creation_lnx_ide_tunnel.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Developers using VS Code Remote Tunnels or Dev Tunnels with approval

## Limitations
Network signal: connections to *.tunnels.api.visualstudio.com, *.devtunnels.ms and global.rel.tunnels.api.visualstudio.com. JetBrains Gateway and other IDE tunnels are not covered.

## Testing
See [tests/](tests/).
