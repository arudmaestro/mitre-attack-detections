# T1135 - Network Share Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1135/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may look for folders and drives shared on remote systems as a means of identifying sources of information to gather as a precursor for Collection and to identify potential systems of interest for Lateral Movement.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Network Share Discovery on Windows | [sigma](sigma/proc_creation_win_network_share_discovery.yml) | [raw](splunk/proc_creation_win_network_share_discovery.spl), [CIM](splunk/proc_creation_win_network_share_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_network_share_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_network_share_discovery_securityevent.kql) | low | experimental |
| SMB Share Listing with smbclient | [sigma](sigma/proc_creation_lnx_smb_share_listing.yml) | [CIM](splunk/proc_creation_lnx_smb_share_listing.spl) | [MDE](sentinel/proc_creation_lnx_smb_share_listing.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and IT inventory scripts
- Administrators troubleshooting file shares

## Limitations
Share enumeration over SMB/RPC by scanners or implants does not create these command lines; Windows Security 5140/5145 on file servers and network detection of many hosts queried show it.

## Testing
See [tests/](tests/).
