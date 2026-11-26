# T1572 - Protocol Tunneling

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1572/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may tunnel network communications to and from a victim system within a separate protocol to avoid detection/network filtering and/or enable access to otherwise unreachable systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Tunneling Tool Executed on Windows | [sigma](sigma/proc_creation_win_tunneling_tools.yml) | [raw](splunk/proc_creation_win_tunneling_tools.spl), [CIM](splunk/proc_creation_win_tunneling_tools_cim.spl) | [MDE](sentinel/proc_creation_win_tunneling_tools.kql), [SecurityEvent](sentinel/proc_creation_win_tunneling_tools_securityevent.kql) | high | experimental |
| Tunneling Tool Executed on Linux | [sigma](sigma/proc_creation_lnx_tunneling_tools.yml) | [CIM](splunk/proc_creation_lnx_tunneling_tools.spl) | [MDE](sentinel/proc_creation_lnx_tunneling_tools.kql) | high | experimental |
| SSH Reverse or Dynamic Port Forwarding on Linux | [sigma](sigma/proc_creation_lnx_ssh_reverse_or_dynamic_forward.yml) | [CIM](splunk/proc_creation_lnx_ssh_reverse_or_dynamic_forward.spl) | [MDE](sentinel/proc_creation_lnx_ssh_reverse_or_dynamic_forward.kql) | low | experimental |
| SSH Reverse or Dynamic Port Forwarding on macOS | [sigma](sigma/proc_creation_macos_ssh_reverse_or_dynamic_forward.yml) | [CIM](splunk/proc_creation_macos_ssh_reverse_or_dynamic_forward.spl) | [MDE](sentinel/proc_creation_macos_ssh_reverse_or_dynamic_forward.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Developers using ngrok or Cloudflare Tunnel for testing; IT using sanctioned tunnels
- Developers using ngrok for testing; sanctioned tunnels
- Administrators and developers using SSH forwarding

## Limitations
Renamed tunneling tools, forwarding set in ~/.ssh/config, and tunnels built into implants are not covered. DNS tunnels show as long, high-entropy query names and high query volume to one domain in DNS logs; HTTPS tunnels to ngrok / trycloudflare domains show in proxy logs.

## Testing
See [tests/](tests/).
