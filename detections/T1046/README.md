# T1046 - Network Service Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1046/
- **Platforms:** Containers, IaaS, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may attempt to get a listing of services running on remote hosts and local network infrastructure devices, including those that may be vulnerable to remote software exploitation.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Network Scanner Executed on Windows | [sigma](sigma/proc_creation_win_network_scanner.yml) | [raw](splunk/proc_creation_win_network_scanner.spl), [CIM](splunk/proc_creation_win_network_scanner_cim.spl) | [MDE](sentinel/proc_creation_win_network_scanner.kql), [SecurityEvent](sentinel/proc_creation_win_network_scanner_securityevent.kql) | medium | experimental |
| Network Scanner or Port Sweep on Linux | [sigma](sigma/proc_creation_lnx_network_scanner.yml) | [CIM](splunk/proc_creation_lnx_network_scanner.spl) | [MDE](sentinel/proc_creation_lnx_network_scanner.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Authorised network administrators and vulnerability scanning

## Limitations
Renamed scanners and PowerShell port scans are not covered by name; network-side detection (one source connecting to many ports or hosts) complements these rules.

## Testing
See [tests/](tests/).
