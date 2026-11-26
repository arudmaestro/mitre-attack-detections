# T1546.010 - Event Triggered Execution: AppInit DLLs

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/010/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence and/or elevate privileges by executing malicious content triggered by AppInit DLLs loaded into processes.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| AppInit DLLs Set or Enabled | [sigma](sigma/registry_set_win_appinit_dlls.yml) | [raw](splunk/registry_set_win_appinit_dlls.spl), [CIM](splunk/registry_set_win_appinit_dlls_cim.spl) | [MDE](sentinel/registry_set_win_appinit_dlls.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Legacy software that still uses AppInit DLLs

## Limitations
Sysmon logs an empty value as '(Empty)' and Defender as an empty string; the Sentinel query accepts both, so clearing AppInit_DLLs does not alert.

## Testing
See [tests/](tests/).
