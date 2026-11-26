# T1218.008 - System Binary Proxy Execution: Odbcconf

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/008/
- **Platforms:** Windows

## Summary
Adversaries may abuse odbcconf.exe to proxy execution of malicious payloads.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Odbcconf Registering a DLL or Using a Response File | [sigma](sigma/proc_creation_win_odbcconf_dll_or_response_file.yml) | [raw](splunk/proc_creation_win_odbcconf_dll_or_response_file.spl), [CIM](splunk/proc_creation_win_odbcconf_dll_or_response_file_cim.spl) | [MDE](sentinel/proc_creation_win_odbcconf_dll_or_response_file.kql), [SecurityEvent](sentinel/proc_creation_win_odbcconf_dll_or_response_file_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Database driver installers registering ODBC driver DLLs

## Testing
See [tests/](tests/).
