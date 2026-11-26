# T1127 - Trusted Developer Utilities Proxy Execution

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1127/
- **Platforms:** Windows

## Summary
Adversaries may take advantage of trusted developer utilities to proxy execution of malicious payloads.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Developer Utility Used to Run Code (csi, rcsi, dnx, cdb, Tracker) | [sigma](sigma/proc_creation_win_developer_utility_proxy_execution.yml) | [raw](splunk/proc_creation_win_developer_utility_proxy_execution.spl), [CIM](splunk/proc_creation_win_developer_utility_proxy_execution_cim.spl) | [MDE](sentinel/proc_creation_win_developer_utility_proxy_execution.kql), [SecurityEvent](sentinel/proc_creation_win_developer_utility_proxy_execution_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers using these tools on build or development machines

## Limitations
Expected on developer workstations and build servers; scope alerting to hosts that are not used for development. MSBuild, ClickOnce and JamPlus have their own sub-technique rules.

## Testing
See [tests/](tests/).
