# T1546.003 - Event Triggered Execution: Windows Management Instrumentation Event Subscription

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/003/
- **Platforms:** Windows

## Summary
Adversaries may establish persistence and elevate privileges by executing malicious content triggered by a Windows Management Instrumentation (WMI) event subscription.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Permanent WMI Event Subscription Created from the Command Line | [sigma](sigma/proc_creation_win_wmi_event_subscription_created.yml) | [raw](splunk/proc_creation_win_wmi_event_subscription_created.spl), [CIM](splunk/proc_creation_win_wmi_event_subscription_created_cim.spl) | [MDE](sentinel/proc_creation_win_wmi_event_subscription_created.kql), [SecurityEvent](sentinel/proc_creation_win_wmi_event_subscription_created_securityevent.kql) | high | experimental |
| WMI Script Event Consumer Host Running | [sigma](sigma/proc_creation_win_wmi_script_consumer_host.yml) | [raw](splunk/proc_creation_win_wmi_script_consumer_host.spl), [CIM](splunk/proc_creation_win_wmi_script_consumer_host_cim.spl) | [MDE](sentinel/proc_creation_win_wmi_script_consumer_host.kql), [SecurityEvent](sentinel/proc_creation_win_wmi_script_consumer_host_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Management agents that register WMI subscriptions (SCCM, some monitoring tools)
- Rare: legacy management scripts using script consumers

## Limitations
Subscriptions created through the WMI API (PowerShell Set-WmiInstance in a script, .NET, MOF files) do not need these strings on a command line. Sysmon EID 19/20/21 (WmiEvent) and the Microsoft-Windows-WMI-Activity/Operational log (5861) record every permanent subscription; collect them when possible.

## Testing
See [tests/](tests/).
