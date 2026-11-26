# T1003.002 - OS Credential Dumping: Security Account Manager

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/002/
- **Platforms:** Windows

## Summary
Adversaries may attempt to extract credential material from the Security Account Manager (SAM) database either through in-memory techniques or through the Windows Registry where the SAM database is stored.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| SAM Registry Hive Saved via reg.exe | [sigma](sigma/proc_creation_win_reg_save_sam_hive.yml) | [raw](splunk/proc_creation_win_reg_save_sam_hive.spl), [CIM](splunk/proc_creation_win_reg_save_sam_hive_cim.spl) | [MDE](sentinel/proc_creation_win_reg_save_sam_hive.kql), [SecurityEvent](sentinel/proc_creation_win_reg_save_sam_hive_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Backup or forensic tooling that exports hives

## Testing
See [tests/](tests/).
