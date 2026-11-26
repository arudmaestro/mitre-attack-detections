# T1083 - File and Directory Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1083/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may enumerate files and directories or may search in specific locations of a host or network share for certain information within a file system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Directory Tree Listing with tree /f | [sigma](sigma/proc_creation_win_tree_file_listing.yml) | [raw](splunk/proc_creation_win_tree_file_listing.spl), [CIM](splunk/proc_creation_win_tree_file_listing_cim.spl) | [MDE](sentinel/proc_creation_win_tree_file_listing.kql), [SecurityEvent](sentinel/proc_creation_win_tree_file_listing_securityevent.kql) | low | experimental |
| Filesystem Search from Root with find | [sigma](sigma/proc_creation_lnx_find_from_root.yml) | [CIM](splunk/proc_creation_lnx_find_from_root.spl) | [MDE](sentinel/proc_creation_lnx_find_from_root.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Users and administrators documenting folder contents
- Administrators, backup and search tools

## Limitations
File discovery is very common; these rules are for hunting. Recursive document searches are covered by T1005.

## Testing
See [tests/](tests/).
