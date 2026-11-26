# T1685.004 - Disable or Modify Tools: Disable or Modify Linux Audit System Log

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1685/004/
- **Platforms:** Linux

## Summary
Adversaries may disable or modify the Linux Audit system to hide malicious activity and avoid detection.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Linux Audit Disabled or Rules Deleted | [sigma](sigma/proc_creation_lnx_auditd_disabled.yml) | [CIM](splunk/proc_creation_lnx_auditd_disabled.spl) | [MDE](sentinel/proc_creation_lnx_auditd_disabled.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators reloading audit rules (auditctl -D is followed by loading rules; augenrules does this)

## Limitations
Changes to /etc/audit/audit.rules and rules.d made with an editor, and kernel-level tampering, are not covered; set the audit configuration immutable (-e 2) so changes need a reboot, and watch for hosts whose audit stream stops.

## Testing
See [tests/](tests/).
