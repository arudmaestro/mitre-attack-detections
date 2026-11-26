# T1016.002 - System Network Configuration Discovery: Wi-Fi Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1016/002/
- **Platforms:** Linux, Windows, macOS

## Summary
Adversaries may search for information about Wi-Fi networks, such as network names and passwords, on compromised systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Wi-Fi Profile Discovery via netsh | [sigma](sigma/proc_creation_win_netsh_wlan_profile_discovery.yml) | [raw](splunk/proc_creation_win_netsh_wlan_profile_discovery.spl), [CIM](splunk/proc_creation_win_netsh_wlan_profile_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_netsh_wlan_profile_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_netsh_wlan_profile_discovery_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Help desk and users troubleshooting Wi-Fi

## Limitations
Raise severity when the command line also contains 'key=clear', which prints saved Wi-Fi passwords.

## Testing
See [tests/](tests/).
