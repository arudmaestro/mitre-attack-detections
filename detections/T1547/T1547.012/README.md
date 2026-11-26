# T1547.012 - Boot or Logon Autostart Execution: Print Processors

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/012/
- **Platforms:** Windows

## Summary
Adversaries may abuse print processors to run malicious DLLs during system boot for persistence and/or privilege escalation.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Print Processor Registered | [sigma](sigma/registry_set_win_print_processor_registered.yml) | [raw](splunk/registry_set_win_print_processor_registered.spl), [CIM](splunk/registry_set_win_print_processor_registered_cim.spl) | [MDE](sentinel/registry_set_win_print_processor_registered.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Printer drivers that install vendor print processors

## Testing
See [tests/](tests/).
