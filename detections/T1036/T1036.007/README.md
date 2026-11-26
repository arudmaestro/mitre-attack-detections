# T1036.007 - Masquerading: Double File Extension

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/007/
- **Platforms:** Windows

## Summary
Adversaries may abuse a double extension in the filename as a means of masquerading the true file type.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Executable with a Document Double Extension | [sigma](sigma/proc_creation_win_double_extension_executable.yml) | [raw](splunk/proc_creation_win_double_extension_executable.spl), [CIM](splunk/proc_creation_win_double_extension_executable_cim.spl) | [MDE](sentinel/proc_creation_win_double_extension_executable.kql), [SecurityEvent](sentinel/proc_creation_win_double_extension_executable_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- None expected

## Testing
See [tests/](tests/).
