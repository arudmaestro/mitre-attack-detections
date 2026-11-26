# T1680 - Local Storage Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1680/
- **Platforms:** ESXi, IaaS, Linux, macOS, Windows

## Summary
Adversaries may enumerate local drives, disks, and/or volumes and their attributes like total or free space and volume serial number.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Volumes or Disks Enumerated with PowerShell or mountvol | [sigma](sigma/proc_creation_win_volume_discovery_powershell.yml) | [raw](splunk/proc_creation_win_volume_discovery_powershell.spl), [CIM](splunk/proc_creation_win_volume_discovery_powershell_cim.spl) | [MDE](sentinel/proc_creation_win_volume_discovery_powershell.kql), [SecurityEvent](sentinel/proc_creation_win_volume_discovery_powershell_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Inventory, backup and disk management scripts

## Limitations
fsutil fsinfo drives and wmic logicaldisk are covered by the T1120 rule. Drive enumeration through APIs (GetLogicalDrives) inside ransomware is not covered. On Linux, df / lsblk are too common to alert on.

## Testing
See [tests/](tests/).
