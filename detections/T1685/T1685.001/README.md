# T1685.001 - Disable or Modify Tools: Disable or Modify Windows Event Log

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1685/001/
- **Platforms:** Windows

## Summary
Adversaries may disable or modify the Windows Event Log to limit data that can be leveraged for detections and audits.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Event Log Channel or Audit Policy Disabled from the Command Line | [sigma](sigma/proc_creation_win_event_log_or_audit_policy_disabled.yml) | [raw](splunk/proc_creation_win_event_log_or_audit_policy_disabled.spl), [CIM](splunk/proc_creation_win_event_log_or_audit_policy_disabled_cim.spl) | [MDE](sentinel/proc_creation_win_event_log_or_audit_policy_disabled.kql), [SecurityEvent](sentinel/proc_creation_win_event_log_or_audit_policy_disabled_securityevent.kql) | high | experimental |
| EventLog Service or Log Channel Disabled in the Registry | [sigma](sigma/registry_set_win_event_log_service_or_channel_disabled.yml) | [raw](splunk/registry_set_win_event_log_service_or_channel_disabled.spl), [CIM](splunk/registry_set_win_event_log_service_or_channel_disabled_cim.spl) | [MDE](sentinel/registry_set_win_event_log_service_or_channel_disabled.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Administrators tuning audit policy (should go through GPO)
- Windows and software installers disabling noisy analytic / debug channels

## Limitations
Killing EventLog service threads in memory (Phant0m, Invoke-Phant0m) and tampering through ETW patching leave no such command or registry value; watch for hosts that stop sending Security events. Many debug / analytic channels are disabled by Windows itself; review the channel name in the registry rule.

## Testing
See [tests/](tests/).
