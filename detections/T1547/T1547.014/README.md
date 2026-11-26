# T1547.014 - Boot or Logon Autostart Execution: Active Setup

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/014/
- **Platforms:** Windows

## Summary
Adversaries may achieve persistence by adding a Registry key to the Active Setup of the local machine.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Active Setup StubPath Set to a Script Host or a File in Temp or Public | [sigma](sigma/registry_set_win_active_setup_stubpath_suspicious.yml) | [raw](splunk/registry_set_win_active_setup_stubpath_suspicious.spl), [CIM](splunk/registry_set_win_active_setup_stubpath_suspicious_cim.spl) | [MDE](sentinel/registry_set_win_active_setup_stubpath_suspicious.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Enterprise software deployment that uses Active Setup scripts per user

## Testing
See [tests/](tests/).
