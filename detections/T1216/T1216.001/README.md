# T1216.001 - System Script Proxy Execution: PubPrn

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1216/001/
- **Platforms:** Windows

## Summary
Adversaries may use PubPrn to proxy execution of malicious remote files.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| PubPrn.vbs Used to Run a Remote Script | [sigma](sigma/proc_creation_win_pubprn_script_moniker.yml) | [raw](splunk/proc_creation_win_pubprn_script_moniker.spl), [CIM](splunk/proc_creation_win_pubprn_script_moniker_cim.spl) | [MDE](sentinel/proc_creation_win_pubprn_script_moniker.kql), [SecurityEvent](sentinel/proc_creation_win_pubprn_script_moniker_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- None expected: printer publishing does not use script: monikers

## Testing
See [tests/](tests/).
