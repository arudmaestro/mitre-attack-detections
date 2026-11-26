# T1055.009 - Process Injection: Proc Memory

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1055/009/
- **Platforms:** Linux

## Summary
Adversaries may inject malicious code into processes via the /proc filesystem in order to evade process-based defenses as well as possibly elevate privileges.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Write to Process Memory via /proc/<pid>/mem with dd | [sigma](sigma/proc_creation_lnx_write_to_proc_mem.yml) | [CIM](splunk/proc_creation_lnx_write_to_proc_mem.spl) | [MDE](sentinel/proc_creation_lnx_write_to_proc_mem.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- None expected

## Limitations
Writes from custom code (open/write on /proc/<pid>/mem) do not use dd; auditd watches on /proc/*/mem opened for writing cover those.

## Testing
See [tests/](tests/).
