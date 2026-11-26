# T1563.002 - Remote Service Session Hijacking: RDP Hijacking

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1563/002/
- **Platforms:** Windows

## Summary
Adversaries may hijack a legitimate user’s remote desktop session to move laterally within an environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| RDP Session Connected to Another Session with tscon | [sigma](sigma/proc_creation_win_tscon_session_redirect.yml) | [raw](splunk/proc_creation_win_tscon_session_redirect.spl), [CIM](splunk/proc_creation_win_tscon_session_redirect_cim.spl) | [MDE](sentinel/proc_creation_win_tscon_session_redirect.kql), [SecurityEvent](sentinel/proc_creation_win_tscon_session_redirect_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators reconnecting their own sessions (rare)

## Limitations
tscon is often started through a temporary service or scheduled task running as SYSTEM (see T1543.003 and T1053.005). On the session host, 4778 / 4779 (session reconnected / disconnected) and TerminalServices-LocalSessionManager 25 show the takeover but are not data sources of this project yet.

## Testing
See [tests/](tests/).
