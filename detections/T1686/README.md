# T1686 - Disable or Modify System Firewall

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1686/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may disable or modify host-based or network firewalls to impair defensive mechanisms and enable further action.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Host Firewall Disabled or Flushed on Linux | [sigma](sigma/proc_creation_lnx_host_firewall_disabled.yml) | [CIM](splunk/proc_creation_lnx_host_firewall_disabled.spl) | [MDE](sentinel/proc_creation_lnx_host_firewall_disabled.kql) | medium | experimental |
| Application Firewall or Packet Filter Disabled on macOS | [sigma](sigma/proc_creation_macos_host_firewall_disabled.yml) | [CIM](splunk/proc_creation_macos_host_firewall_disabled.spl) | [MDE](sentinel/proc_creation_macos_host_firewall_disabled.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Administrators and configuration management reloading firewall rules (a flush followed by new rules)
- Administrators troubleshooting network issues

## Limitations
Windows firewall changes are in T1686.003; cloud and network device firewalls (T1686.001 / .002) are guidance. Adding allow rules (iptables -A ... -j ACCEPT, ufw allow) is normal administration and is not flagged.

## Testing
See [tests/](tests/).
