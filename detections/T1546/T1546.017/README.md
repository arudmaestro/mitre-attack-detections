# T1546.017 - Event Triggered Execution: Udev Rules

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/017/
- **Platforms:** Linux

## Summary
Adversaries may maintain persistence through executing malicious content triggered using udev rules.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Udev Rule Written from the Command Line | [sigma](sigma/proc_creation_lnx_udev_rule_written.yml) | [CIM](splunk/proc_creation_lnx_udev_rule_written.spl) | [MDE](sentinel/proc_creation_lnx_udev_rule_written.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and hardware vendor installers adding device rules

## Limitations
Rules written with shell redirection or by programs directly need file monitoring (auditd -w /etc/udev/rules.d -p wa).

## Testing
See [tests/](tests/).
