# T1686.003 - Disable or Modify System Firewall: Windows Host Firewall

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1686/003/
- **Platforms:** Windows

## Summary
Adversaries may disable or modify the Windows host firewall to bypass controls limiting network usage.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Windows Firewall Disabled from the Command Line | [sigma](sigma/proc_creation_win_firewall_disabled.yml) | [raw](splunk/proc_creation_win_firewall_disabled.spl), [CIM](splunk/proc_creation_win_firewall_disabled_cim.spl) | [MDE](sentinel/proc_creation_win_firewall_disabled.kql), [SecurityEvent](sentinel/proc_creation_win_firewall_disabled_securityevent.kql) | high | experimental |
| Windows Firewall Profile Disabled in the Registry | [sigma](sigma/registry_set_win_firewall_policy_disabled.yml) | [raw](splunk/registry_set_win_firewall_policy_disabled.spl), [CIM](splunk/registry_set_win_firewall_policy_disabled_cim.spl) | [MDE](sentinel/registry_set_win_firewall_policy_disabled.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Administrators troubleshooting connectivity
- Group Policy deliberately turning off a profile; third-party firewalls replacing Windows Firewall

## Limitations
Allow rules added for specific programs or ports (netsh advfirewall firewall add rule ... action=allow, New-NetFirewallRule) are normal for installers and are not flagged; review new inbound allow rules for remote-access tools and unusual ports.

## Testing
See [tests/](tests/).
