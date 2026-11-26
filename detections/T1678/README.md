# T1678 - Delay Execution

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1678/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may employ various time-based methods to evade detection and analysis.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Ping to Localhost Used as a Delay | [sigma](sigma/proc_creation_win_ping_localhost_delay.yml) | [raw](splunk/proc_creation_win_ping_localhost_delay.spl), [CIM](splunk/proc_creation_win_ping_localhost_delay_cim.spl) | [MDE](sentinel/proc_creation_win_ping_localhost_delay.kql), [SecurityEvent](sentinel/proc_creation_win_ping_localhost_delay_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Batch scripts that use ping as a sleep

## Limitations
Delays through APIs (Sleep, NtDelayExecution), timeout.exe, Start-Sleep and scheduled execution are not covered; the rule is most useful combined with what the same process tree does next (e.g. del of its own file).

## Testing
See [tests/](tests/).
