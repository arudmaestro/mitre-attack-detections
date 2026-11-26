# T1552.001 - Unsecured Credentials: Credentials In Files

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1552/001/
- **Platforms:** Containers, IaaS, Linux, macOS, Windows

## Summary
Adversaries may search local file systems and remote file shares for files containing insecurely stored credentials.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Recursive Search for Passwords in Files on Windows | [sigma](sigma/proc_creation_win_recursive_password_search.yml) | [raw](splunk/proc_creation_win_recursive_password_search.spl), [CIM](splunk/proc_creation_win_recursive_password_search_cim.spl) | [MDE](sentinel/proc_creation_win_recursive_password_search.kql), [SecurityEvent](sentinel/proc_creation_win_recursive_password_search_securityevent.kql) | medium | experimental |
| Recursive Search for Passwords in Files on Linux | [sigma](sigma/proc_creation_lnx_recursive_password_search.yml) | [CIM](splunk/proc_creation_lnx_recursive_password_search.spl) | [MDE](sentinel/proc_creation_lnx_recursive_password_search.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and security teams searching for exposed passwords

## Limitations
Tools that read files themselves (LaZagne, Snaffler, SharpShares, custom scripts) leave no search keyword on the command line; file-access auditing on shares (5145) and EDR file events show mass reads. Searches for other words (secret, token, apikey) are not covered.

## Testing
See [tests/](tests/).
