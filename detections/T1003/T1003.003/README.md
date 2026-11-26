# T1003.003 - OS Credential Dumping: NTDS

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/003/
- **Platforms:** Windows

## Summary
Adversaries may attempt to access or create a copy of the Active Directory domain database in order to steal credential information, as well as obtain other information about domain members such as devices, users, and access rights.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| NTDS.dit Access via ntdsutil or Command Line | [sigma](sigma/proc_creation_win_ntds_dit_access.yml) | [raw](splunk/proc_creation_win_ntds_dit_access.spl), [CIM](splunk/proc_creation_win_ntds_dit_access_cim.spl) | [MDE](sentinel/proc_creation_win_ntds_dit_access.kql), [SecurityEvent](sentinel/proc_creation_win_ntds_dit_access_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- AD backup or disaster recovery procedures (IFM media creation)
- Backup software referencing ntds.dit

## Limitations
Also watch for Volume Shadow Copy creation on domain controllers (vssadmin, wmic shadowcopy) followed by copies from the shadow volume.

## Testing
See [tests/](tests/).
