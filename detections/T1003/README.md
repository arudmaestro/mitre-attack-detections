# T1003 - OS Credential Dumping

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to dump credentials to obtain account login and credential material, normally in the form of a hash or a clear text password.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Mimikatz Module Keywords in Command Line | [sigma](sigma/proc_creation_win_mimikatz_keywords.yml) | [raw](splunk/proc_creation_win_mimikatz_keywords.spl), [CIM](splunk/proc_creation_win_mimikatz_keywords_cim.spl) | [MDE](sentinel/proc_creation_win_mimikatz_keywords.kql), [SecurityEvent](sentinel/proc_creation_win_mimikatz_keywords_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Authorised red team or penetration testing

## Limitations
Catches Mimikatz when commands are passed on the command line. In-memory or reflectively loaded Mimikatz with an interactive prompt will not show these keywords; pair with the sub-technique rules.

## Testing
See [tests/](tests/).
