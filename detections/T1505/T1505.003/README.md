# T1505.003 - Server Software Component: Web Shell

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1505/003/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may backdoor web servers with web shells to establish persistent access to systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Web Server Process Running Discovery or Download Tools on Windows | [sigma](sigma/proc_creation_win_web_server_spawns_recon_tool.yml) | [raw](splunk/proc_creation_win_web_server_spawns_recon_tool.spl), [CIM](splunk/proc_creation_win_web_server_spawns_recon_tool_cim.spl) | [MDE](sentinel/proc_creation_win_web_server_spawns_recon_tool.kql), [SecurityEvent](sentinel/proc_creation_win_web_server_spawns_recon_tool_securityevent.kql) | high | experimental |
| Web Server Process Running Discovery or Download Tools on Linux | [sigma](sigma/proc_creation_lnx_web_server_spawns_recon_tool.yml) | [CIM](splunk/proc_creation_lnx_web_server_spawns_recon_tool.spl) | [MDE](sentinel/proc_creation_lnx_web_server_spawns_recon_tool.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Web applications that query system information through command-line tools by design
- Web applications that call these tools by design (allowlist by command line)

## Limitations
Web shells that start a shell first (cmd.exe, sh) are covered by the T1190 rules. Web shell files themselves are best found with file-integrity monitoring of web roots (new .aspx/.jsp/.php files) and web server logs (POST requests to rarely used pages).

## Testing
See [tests/](tests/).
