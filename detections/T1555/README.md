# T1555 - Credentials from Password Stores

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1555/
- **Platforms:** IaaS, Linux, macOS, Windows

## Summary
Adversaries may search for common password storage locations to obtain user credentials.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| LaZagne Credential Dumper Executed | [sigma](sigma/proc_creation_win_lazagne.yml) | [raw](splunk/proc_creation_win_lazagne.spl), [CIM](splunk/proc_creation_win_lazagne_cim.spl) | [MDE](sentinel/proc_creation_win_lazagne.kql), [SecurityEvent](sentinel/proc_creation_win_lazagne_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
Renamed copies of LaZagne are only caught when the original name stays in the path. Store-specific rules are in the sub-technique folders (T1555.001, .003 - .006).

## Testing
See [tests/](tests/).
