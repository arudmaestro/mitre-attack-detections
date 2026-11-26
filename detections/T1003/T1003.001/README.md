# T1003.001 - OS Credential Dumping: LSASS Memory

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/001/
- **Platforms:** Windows

## Summary
Adversaries may attempt to access credential material stored in the process memory of the Local Security Authority Subsystem Service (LSASS).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| LSASS Memory Dump via Comsvcs MiniDump or ProcDump | [sigma](sigma/proc_creation_win_lsass_dump_comsvcs_procdump.yml) | [raw](splunk/proc_creation_win_lsass_dump_comsvcs_procdump.spl), [CIM](splunk/proc_creation_win_lsass_dump_comsvcs_procdump_cim.spl) | [MDE](sentinel/proc_creation_win_lsass_dump_comsvcs_procdump.kql), [SecurityEvent](sentinel/proc_creation_win_lsass_dump_comsvcs_procdump_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Troubleshooting LSASS crashes with ProcDump under change control

## Limitations
ProcDump run against the LSASS PID (instead of the name) will not contain 'lsass'. Credential Guard and LSA protection (RunAsPPL) reduce the impact of this technique.

## Testing
See [tests/](tests/).
