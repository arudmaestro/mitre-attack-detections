# T1003.004 - OS Credential Dumping: LSA Secrets

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/004/
- **Platforms:** Windows

## Summary
Adversaries with SYSTEM access to a host may attempt to access Local Security Authority (LSA) secrets, which can contain a variety of different credential materials, such as credentials for service accounts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| SECURITY Registry Hive Saved via reg.exe | [sigma](sigma/proc_creation_win_reg_save_security_hive.yml) | [raw](splunk/proc_creation_win_reg_save_security_hive.spl), [CIM](splunk/proc_creation_win_reg_save_security_hive_cim.spl) | [MDE](sentinel/proc_creation_win_reg_save_security_hive.kql), [SecurityEvent](sentinel/proc_creation_win_reg_save_security_hive_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Backup or forensic tooling that exports hives

## Testing
See [tests/](tests/).
