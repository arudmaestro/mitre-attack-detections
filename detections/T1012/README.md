# T1012 - Query Registry

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1012/
- **Platforms:** Windows

## Summary
Adversaries may interact with the Windows Registry to gather information about the system, configuration, and installed software.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Registry Query of Sensitive Keys via reg.exe | [sigma](sigma/proc_creation_win_reg_query_sensitive_keys.yml) | [raw](splunk/proc_creation_win_reg_query_sensitive_keys.spl), [CIM](splunk/proc_creation_win_reg_query_sensitive_keys_cim.spl) | [MDE](sentinel/proc_creation_win_reg_query_sensitive_keys.kql), [SecurityEvent](sentinel/proc_creation_win_reg_query_sensitive_keys_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators, installers and inventory scripts

## Testing
See [tests/](tests/).
