# T1070.003 - Indicator Removal: Clear Command History

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1070/003/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
In addition to clearing system logs, an adversary may clear the command history of a compromised account to conceal the actions undertaken during an intrusion.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Shell History Cleared or Disabled on Linux | [sigma](sigma/proc_creation_lnx_clear_shell_history.yml) | [CIM](splunk/proc_creation_lnx_clear_shell_history.spl) | [MDE](sentinel/proc_creation_lnx_clear_shell_history.kql) | medium | experimental |
| PowerShell History Cleared or Disabled | [sigma](sigma/proc_creation_win_clear_powershell_history.yml) | [raw](splunk/proc_creation_win_clear_powershell_history.spl), [CIM](splunk/proc_creation_win_clear_powershell_history_cim.spl) | [MDE](sentinel/proc_creation_win_clear_powershell_history.kql), [SecurityEvent](sentinel/proc_creation_win_clear_powershell_history_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users viewing their own history file
- Hardening scripts
- Privacy or hardening scripts

## Limitations
Shell built-ins (history -c, unset HISTFILE typed in an interactive shell) do not start a process and are only visible with shell auditing (e.g. auditd execve of the shell, or EDR command telemetry).

## Testing
See [tests/](tests/).
