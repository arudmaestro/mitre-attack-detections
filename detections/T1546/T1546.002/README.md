# T1546.002 - Event Triggered Execution: Screensaver

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/002/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence by executing malicious content triggered by user inactivity.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Screensaver Set to a Program Outside Windows or Program Files | [sigma](sigma/registry_set_win_screensaver_unusual_path.yml) | [raw](splunk/registry_set_win_screensaver_unusual_path.spl), [CIM](splunk/registry_set_win_screensaver_unusual_path_cim.spl) | [MDE](sentinel/registry_set_win_screensaver_unusual_path.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Third-party screensavers installed in user folders

## Testing
See [tests/](tests/).
