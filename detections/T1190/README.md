# T1190 - Exploit Public-Facing Application

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1190/
- **Platforms:** Containers, ESXi, IaaS, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may attempt to exploit a weakness in an Internet-facing host or system to initially access a network.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Web Server Process Spawning a Shell on Windows | [sigma](sigma/proc_creation_win_web_server_spawns_shell.yml) | [raw](splunk/proc_creation_win_web_server_spawns_shell.spl), [CIM](splunk/proc_creation_win_web_server_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_web_server_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_web_server_spawns_shell_securityevent.kql) | high | experimental |
| Web Server Process Spawning a Shell on Linux | [sigma](sigma/proc_creation_lnx_web_server_spawns_shell.yml) | [CIM](splunk/proc_creation_lnx_web_server_spawns_shell.spl) | [MDE](sentinel/proc_creation_lnx_web_server_spawns_shell.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Web applications that legitimately call command-line tools
- CGI scripts and web applications that run shell commands by design

## Limitations
Java application servers (Tomcat/JBoss/WebLogic running as java) are not included because java.exe/java spawns shells in many legitimate apps; build an allowlisted rule for your app servers. Exploits that never start a shell need WAF/web logs and EDR.

## Testing
See [tests/](tests/).
