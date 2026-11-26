# T1127.002 - Trusted Developer Utilities Proxy Execution: ClickOnce

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1127/002/
- **Platforms:** Windows

## Summary
Adversaries may use ClickOnce applications (.appref-ms and .application files) to proxy execution of code through a trusted Windows utility.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| ClickOnce Application Launched via dfshim or dfsvc | [sigma](sigma/proc_creation_win_clickonce_execution.yml) | [raw](splunk/proc_creation_win_clickonce_execution.spl), [CIM](splunk/proc_creation_win_clickonce_execution_cim.spl) | [MDE](sentinel/proc_creation_win_clickonce_execution.kql), [SecurityEvent](sentinel/proc_creation_win_clickonce_execution_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Legitimate ClickOnce business applications

## Limitations
Baseline the ClickOnce applications used in your organisation and alert on new ones, especially those downloaded from external URLs.

## Testing
See [tests/](tests/).
