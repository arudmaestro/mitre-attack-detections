# T1127.003 - Trusted Developer Utilities Proxy Execution: JamPlus

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1127/003/
- **Platforms:** Windows

## Summary
Adversaries may use `JamPlus` to proxy the execution of a malicious script.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| JamPlus Build Tool Executed | [sigma](sigma/proc_creation_win_jamplus_execution.yml) | [raw](splunk/proc_creation_win_jamplus_execution.spl), [CIM](splunk/proc_creation_win_jamplus_execution_cim.spl) | [MDE](sentinel/proc_creation_win_jamplus_execution.kql), [SecurityEvent](sentinel/proc_creation_win_jamplus_execution_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers using JamPlus builds

## Limitations
JamPlus is rare in most enterprises; any execution outside known build hosts is worth reviewing. Renamed copies are not covered.

## Testing
See [tests/](tests/).
