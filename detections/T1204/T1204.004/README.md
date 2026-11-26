# T1204.004 - User Execution: Malicious Copy and Paste

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1204/004/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary may rely upon a user copying and pasting code in order to gain execution.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Suspicious Command Typed in the Run Dialog | [sigma](sigma/registry_set_win_runmru_suspicious_command.yml) | [raw](splunk/registry_set_win_runmru_suspicious_command.spl), [CIM](splunk/registry_set_win_runmru_suspicious_command_cim.spl) | [MDE](sentinel/registry_set_win_runmru_suspicious_command.kql) | medium | experimental |
| Download Command Started Directly by Explorer | [sigma](sigma/proc_creation_win_explorer_spawns_download_cradle.yml) | [raw](splunk/proc_creation_win_explorer_spawns_download_cradle.spl), [CIM](splunk/proc_creation_win_explorer_spawns_download_cradle_cim.spl) | [MDE](sentinel/proc_creation_win_explorer_spawns_download_cradle.kql), [SecurityEvent](sentinel/proc_creation_win_explorer_spawns_download_cradle_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators who start PowerShell from the Run dialog
- Administrators running install one-liners (e.g. irm ... | iex) from the Run dialog

## Limitations
The registry rule needs Sysmon registry events for the RunMRU key (check that your Sysmon configuration includes it). Pasting into a terminal (macOS Terminal, Windows Terminal) leaves no RunMRU entry; there the process rule and download-cradle rules (T1059.001) apply.

## Testing
See [tests/](tests/).
