# T1218.004 - System Binary Proxy Execution: InstallUtil

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/004/
- **Platforms:** Windows

## Summary
Adversaries may use InstallUtil to proxy execution of code through a trusted Windows utility.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| InstallUtil Used to Run Code | [sigma](sigma/proc_creation_win_installutil_proxy_execution.yml) | [raw](splunk/proc_creation_win_installutil_proxy_execution.spl), [CIM](splunk/proc_creation_win_installutil_proxy_execution_cim.spl) | [MDE](sentinel/proc_creation_win_installutil_proxy_execution.kql), [SecurityEvent](sentinel/proc_creation_win_installutil_proxy_execution_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers installing Windows services they built from a user folder

## Testing
See [tests/](tests/).
