# T1027.011 - Obfuscated Files or Information: Fileless Storage

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/011/
- **Platforms:** Linux, Windows

## Summary
Adversaries may store data in "fileless" formats to conceal malicious activity from defenses.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| PowerShell Executing Payload Stored in the Registry | [sigma](sigma/proc_creation_win_powershell_registry_payload_execution.yml) | [raw](splunk/proc_creation_win_powershell_registry_payload_execution.spl), [CIM](splunk/proc_creation_win_powershell_registry_payload_execution_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_registry_payload_execution.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_registry_payload_execution_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Management scripts that keep encoded configuration in the registry

## Limitations
Also hunt for unusually large registry values (Sysmon EID 13 / DeviceRegistryEvents RegistryValueData length). Linux fileless storage (memfd, /dev/shm) is not covered.

## Testing
See [tests/](tests/).
