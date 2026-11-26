# T1555.005 - Credentials from Password Stores: Password Managers

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1555/005/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may acquire user credentials from third-party password managers.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| KeePass Database or Configuration Accessed by Another Program | [sigma](sigma/proc_creation_win_keepass_database_or_config_access.yml) | [raw](splunk/proc_creation_win_keepass_database_or_config_access.spl), [CIM](splunk/proc_creation_win_keepass_database_or_config_access_cim.spl) | [MDE](sentinel/proc_creation_win_keepass_database_or_config_access.kql), [SecurityEvent](sentinel/proc_creation_win_keepass_database_or_config_access_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Backup scripts and users copying their own database

## Limitations
Memory scraping of a running password manager (KeeThief, KeePass CVE-2023-32784 dumps), malicious plugins and other password managers (1Password, Bitwarden, LastPass) are not covered; EDR process-access telemetry for the password manager process shows memory reads.

## Testing
See [tests/](tests/).
