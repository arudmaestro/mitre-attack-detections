# T1543.003 - Create or Modify System Process: Windows Service

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1543/003/
- **Platforms:** Windows

## Summary
Adversaries may create or modify Windows services to repeatedly execute malicious payloads as part of persistence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Service Created or Changed to Run a Script Host or a File in a User Folder | [sigma](sigma/proc_creation_win_service_created_with_suspicious_binary.yml) | [raw](splunk/proc_creation_win_service_created_with_suspicious_binary.spl), [CIM](splunk/proc_creation_win_service_created_with_suspicious_binary_cim.spl) | [MDE](sentinel/proc_creation_win_service_created_with_suspicious_binary.kql), [SecurityEvent](sentinel/proc_creation_win_service_created_with_suspicious_binary_securityevent.kql) | high | experimental |
| Service Installed with a Script Host or a File in a User Folder (4697) | [sigma](sigma/win_security_service_installed_suspicious_binary.yml) | [raw](splunk/win_security_service_installed_suspicious_binary.spl) | [SecurityEvent](sentinel/win_security_service_installed_suspicious_binary.kql) | high | experimental |
| Service ImagePath Set to a Script Host or a File in a User Folder | [sigma](sigma/registry_set_win_service_imagepath_suspicious.yml) | [raw](splunk/registry_set_win_service_imagepath_suspicious.spl), [CIM](splunk/registry_set_win_service_imagepath_suspicious_cim.spl) | [MDE](sentinel/registry_set_win_service_imagepath_suspicious.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Software installers that wrap services in a script (rare)
- Administration tools that install temporary services running scripts

## Limitations
4697 needs 'Audit Security System Extension'. Without it, the System log event 7045 has the same information (not a data source of this project yet). In Sentinel, 4697 fields are columns of SecurityEvent when the Windows Security Events connector collects them; if ServiceFileName is empty in your workspace, parse it from EventData.

## Testing
See [tests/](tests/).
