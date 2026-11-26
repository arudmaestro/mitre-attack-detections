# T1219.002 - Remote Access Tools: Remote Desktop Software

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1219/002/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary may use legitimate desktop support software to establish an interactive command and control channel to target systems within networks.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Remote Access Tool Executed on Windows | [sigma](sigma/proc_creation_win_remote_access_tool.yml) | [raw](splunk/proc_creation_win_remote_access_tool.spl), [CIM](splunk/proc_creation_win_remote_access_tool_cim.spl) | [MDE](sentinel/proc_creation_win_remote_access_tool.kql), [SecurityEvent](sentinel/proc_creation_win_remote_access_tool_securityevent.kql) | medium | experimental |
| Remote Access Tool Executed on Linux | [sigma](sigma/proc_creation_lnx_remote_access_tool.yml) | [CIM](splunk/proc_creation_lnx_remote_access_tool.spl) | [MDE](sentinel/proc_creation_lnx_remote_access_tool.kql) | medium | experimental |
| Remote Access Tool Executed on macOS | [sigma](sigma/proc_creation_macos_remote_access_tool.yml) | [CIM](splunk/proc_creation_macos_remote_access_tool.spl) | [MDE](sentinel/proc_creation_macos_remote_access_tool.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Approved remote support and RMM tools (allowlist the tools and hosts you use)
- Approved remote support tools

## Limitations
Tools are renamed easily; add DNS/proxy detections for the vendors' relay domains (e.g. *.anydesk.com, *.teamviewer.com, *.screenconnect.com, rustdesk relays) and file signer checks in EDR. Allowlist the RMM product your IT team uses and alert on all others.

## Testing
See [tests/](tests/).
