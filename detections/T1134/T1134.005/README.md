# T1134.005 - Access Token Manipulation: SID-History Injection

- **Tactic(s):** Stealth, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1134/005/
- **Platforms:** Windows

## Summary
Adversaries may use SID-History Injection to escalate privileges and bypass access controls.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| SID History Added to an Account | [sigma](sigma/win_security_sid_history_added.yml) | [raw](splunk/win_security_sid_history_added.spl) | [SecurityEvent](sentinel/win_security_sid_history_added.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.

## Known false positives & tuning
- Domain migrations that use SID History (ADMT)

## Limitations
Requires 'Audit User Account Management' on domain controllers. Direct database or DCShadow modifications may not raise these events; Defender for Identity alerts on SID History anomalies.

## Testing
See [tests/](tests/).
