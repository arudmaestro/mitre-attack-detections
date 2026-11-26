# T1561.001 - Disk Wipe: Disk Content Wipe

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1561/001/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may erase the contents of storage devices on specific systems or in large numbers in a network to interrupt availability to system and network resources.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Raw Disk Device Overwritten with dd or shred | [sigma](sigma/proc_creation_lnx_raw_disk_overwrite.yml) | [CIM](splunk/proc_creation_lnx_raw_disk_overwrite.spl) | [MDE](sentinel/proc_creation_lnx_raw_disk_overwrite.kql) | high | experimental |
| Free Disk Space Wiped with cipher /w | [sigma](sigma/proc_creation_win_cipher_wipe_free_space.yml) | [raw](splunk/proc_creation_win_cipher_wipe_free_space.spl), [CIM](splunk/proc_creation_win_cipher_wipe_free_space_cim.spl) | [MDE](sentinel/proc_creation_win_cipher_wipe_free_space.kql), [SecurityEvent](sentinel/proc_creation_win_cipher_wipe_free_space_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Disk imaging, secure decommissioning and OS installers
- Users and decommissioning scripts securely wiping free space

## Limitations
Most Windows wipers write to the disk through the raw device (\\.\PhysicalDrive0) or a signed driver from inside the program, without a tool command line; the T1561.002 rule catches command lines that name a physical drive. Mass file overwrite and deletion (T1485) and volume shadow copy deletion (T1490) usually come with wipers.

## Testing
See [tests/](tests/).
