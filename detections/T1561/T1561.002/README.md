# T1561.002 - Disk Wipe: Disk Structure Wipe

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1561/002/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may corrupt or wipe the disk data structures on a hard drive necessary to boot a system; targeting specific critical systems or in large numbers in a network to interrupt availability to system and network resources.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Partition Table or File System Signatures Wiped on Linux | [sigma](sigma/proc_creation_lnx_partition_table_wiped.yml) | [CIM](splunk/proc_creation_lnx_partition_table_wiped.spl) | [MDE](sentinel/proc_creation_lnx_partition_table_wiped.kql) | high | experimental |
| Physical Drive Referenced on the Command Line | [sigma](sigma/proc_creation_win_physical_drive_command_line.yml) | [raw](splunk/proc_creation_win_physical_drive_command_line.spl), [CIM](splunk/proc_creation_win_physical_drive_command_line_cim.spl) | [MDE](sentinel/proc_creation_win_physical_drive_command_line.kql), [SecurityEvent](sentinel/proc_creation_win_physical_drive_command_line_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Provisioning, OS installation and disk re-use scripts
- Disk imaging, forensic and backup tools

## Limitations
Contains matching is case-insensitive, so sgdisk -z (zap the GPT only) also matches. Wipers that open the physical drive inside the program have no such command line; EDR raw-disk-access telemetry and backups are the main controls. diskpart clean run from a script file (diskpart /s) shows only the script name.

## Testing
See [tests/](tests/).
