# T1690 - Prevent Command History Logging

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1690/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may impair command history logging to hide commands they run on a compromised system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| PowerShell Command History Disabled | [sigma](sigma/proc_creation_win_psreadline_history_disabled.yml) | [raw](splunk/proc_creation_win_psreadline_history_disabled.spl), [CIM](splunk/proc_creation_win_psreadline_history_disabled_cim.spl) | [MDE](sentinel/proc_creation_win_psreadline_history_disabled.kql), [SecurityEvent](sentinel/proc_creation_win_psreadline_history_disabled_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users who disable history for privacy

## Limitations
Linux and macOS history tampering (HISTFILE, HISTSIZE=0, history -c) is covered by the T1070.003 rule; shell built-ins such as unset HISTFILE or set +o history start no process. History disabled inside scripts or profiles is not covered.

## Testing
See [tests/](tests/).
