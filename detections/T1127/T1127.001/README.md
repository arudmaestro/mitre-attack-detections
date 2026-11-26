# T1127.001 - Trusted Developer Utilities Proxy Execution: MSBuild

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1127/001/
- **Platforms:** Windows

## Summary
Adversaries may use MSBuild to proxy execution of code through a trusted Windows utility.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| MSBuild Running a Project from a User-Writable Path or Script Host | [sigma](sigma/proc_creation_win_msbuild_suspicious_execution.yml) | [raw](splunk/proc_creation_win_msbuild_suspicious_execution.spl), [CIM](splunk/proc_creation_win_msbuild_suspicious_execution_cim.spl) | [MDE](sentinel/proc_creation_win_msbuild_suspicious_execution.kql), [SecurityEvent](sentinel/proc_creation_win_msbuild_suspicious_execution_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Build agents and developers building projects from temp folders

## Limitations
MSBuild running a project from a normal source folder is not covered. MSBuild making outbound network connections is another strong signal (network telemetry).

## Testing
See [tests/](tests/).
