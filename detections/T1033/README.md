# T1033 - System Owner/User Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1033/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may attempt to identify the primary user, currently logged in user, set of users that commonly uses a system, or whether a user is actively using the system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| System Owner/User Discovery via whoami or quser | [sigma](sigma/proc_creation_win_user_discovery.yml) | [raw](splunk/proc_creation_win_user_discovery.spl), [CIM](splunk/proc_creation_win_user_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_user_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_user_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators, login scripts and IT tools

## Limitations
Very common in normal use. Fidelity is much higher when the parent is a web server, database or Office process (w3wp.exe, sqlservr.exe, winword.exe) or the user is SYSTEM; tune with those filters for alerting.

## Testing
See [tests/](tests/).
