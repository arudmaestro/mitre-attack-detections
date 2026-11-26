# T1614 - System Location Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1614/
- **Platforms:** IaaS, Linux, macOS, Windows

## Summary
Adversaries may gather information in an attempt to calculate the geographical location of a victim host.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| IP Geolocation Service Queried from the Command Line on Windows | [sigma](sigma/proc_creation_win_ip_geolocation_lookup.yml) | [raw](splunk/proc_creation_win_ip_geolocation_lookup.spl), [CIM](splunk/proc_creation_win_ip_geolocation_lookup_cim.spl) | [MDE](sentinel/proc_creation_win_ip_geolocation_lookup.kql), [SecurityEvent](sentinel/proc_creation_win_ip_geolocation_lookup_securityevent.kql) | medium | experimental |
| IP Geolocation Service Queried from the Command Line on Linux | [sigma](sigma/proc_creation_lnx_ip_geolocation_lookup.yml) | [CIM](splunk/proc_creation_lnx_ip_geolocation_lookup.spl) | [MDE](sentinel/proc_creation_lnx_ip_geolocation_lookup.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Scripts and tools that look up their own location

## Limitations
Public IP lookup sites (ipinfo.io, ip-api.com, ifconfig.me ...) are covered by the T1016.001 rule. Lookups done inside malware need proxy / DNS logs for these domains.

## Testing
See [tests/](tests/).
