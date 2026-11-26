# T1003.006 - OS Credential Dumping: DCSync

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/006/
- **Platforms:** Windows

## Summary
Adversaries may attempt to access credentials and other sensitive information by abusing a Windows Domain Controller's application programming interface (API) to simulate the replication process from a remote domain controller using a technique called DCSync.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| DCSync - Directory Replication Requested by Non-DC Account | [sigma](sigma/win_security_dcsync_replication_by_non_dc.yml) | [raw](splunk/win_security_dcsync_replication_by_non_dc.spl) | [SecurityEvent](sentinel/win_security_dcsync_replication_by_non_dc.kql) | high | experimental |

## Required data sources
- Splunk: Windows Security event 4662 (raw search). Sentinel: `SecurityEvent` 4662.

## Known false positives & tuning
- Azure AD / Entra Connect sync accounts not named MSOL_*
- Other legitimate replication tools (e.g. some identity or backup products)

## Limitations
Requires 'Audit Directory Service Access' on domain controllers and an auditing SACL on the domain object. The machine-account filter ($) also hides a compromised computer account; for stronger coverage replace it with an allowlist of your domain controller names. Microsoft Defender for Identity detects DCSync natively.

## Testing
See [tests/](tests/).
