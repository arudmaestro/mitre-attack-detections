# T1574.011 - Hijack Execution Flow: Services Registry Permissions Weakness

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/011/
- **Platforms:** Windows

## Summary
Adversaries may execute their own malicious payloads by hijacking the Registry entries used by services.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Service FailureCommand Set or ServiceDll Pointed to a User-Writable Folder | [sigma](sigma/registry_set_win_service_failure_command_or_user_servicedll.yml) | [raw](splunk/registry_set_win_service_failure_command_or_user_servicedll.spl), [CIM](splunk/registry_set_win_service_failure_command_or_user_servicedll_cim.spl) | [MDE](sentinel/registry_set_win_service_failure_command_or_user_servicedll.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Monitoring software that configures recovery commands for services

## Limitations
ImagePath changes to scripts or user folders are detected by the T1543.003 registry rule. Find weak service key permissions with accesschk -kwsu or Get-Acl on HKLM\SYSTEM\CurrentControlSet\Services\*.

## Testing
See [tests/](tests/).
