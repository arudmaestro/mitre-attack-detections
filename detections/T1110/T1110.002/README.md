# T1110.002 - Brute Force: Password Cracking

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1110/002/
- **Platforms:** Identity Provider, Linux, macOS, Network Devices, Office Suite, Windows

## Summary
Adversaries may use password cracking to attempt to recover usable credentials, such as plaintext passwords, when credential material such as password hashes are obtained.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Password Cracking Tool Executed on Windows | [sigma](sigma/proc_creation_win_password_cracker.yml) | [raw](splunk/proc_creation_win_password_cracker.spl), [CIM](splunk/proc_creation_win_password_cracker_cim.spl) | [MDE](sentinel/proc_creation_win_password_cracker.kql), [SecurityEvent](sentinel/proc_creation_win_password_cracker_securityevent.kql) | medium | experimental |
| Password Cracking Tool Executed on Linux | [sigma](sigma/proc_creation_lnx_password_cracker.yml) | [CIM](splunk/proc_creation_lnx_password_cracker.spl) | [MDE](sentinel/proc_creation_lnx_password_cracker.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Authorised password auditing by the security team

## Limitations
Cracking usually happens offline on attacker infrastructure; these rules only catch cracking on monitored hosts. Renamed binaries are not covered.

## Testing
See [tests/](tests/).
