# T1552.003 - Unsecured Credentials: Shell History

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1552/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may search the command history on compromised systems for insecurely stored credentials.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Shell History File Accessed on Linux | [sigma](sigma/proc_creation_lnx_shell_history_access.yml) | [CIM](splunk/proc_creation_lnx_shell_history_access.spl) | [MDE](sentinel/proc_creation_lnx_shell_history_access.kql) | low | experimental |
| Shell History File Accessed on macOS | [sigma](sigma/proc_creation_macos_shell_history_access.yml) | [CIM](splunk/proc_creation_macos_shell_history_access.spl) | [MDE](sentinel/proc_creation_macos_shell_history_access.kql) | low | experimental |
| PowerShell History File Accessed | [sigma](sigma/proc_creation_win_powershell_history_access.yml) | [raw](splunk/proc_creation_win_powershell_history_access.spl), [CIM](splunk/proc_creation_win_powershell_history_access_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_history_access.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_history_access_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators reviewing history files; backup tools
- Administrators reviewing or clearing their history

## Limitations
The same references appear when history is cleared or deleted (T1070.003). Programs that read history files without naming them on a command line need file-access telemetry.

## Testing
See [tests/](tests/).
