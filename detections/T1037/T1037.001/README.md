# T1037.001 - Boot or Logon Initialization Scripts: Logon Script (Windows)

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1037/001/
- **Platforms:** Windows

## Summary
Adversaries may use Windows logon scripts automatically executed at logon initialization to establish persistence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Logon Script Set via UserInitMprLogonScript | [sigma](sigma/proc_creation_win_userinitmprlogonscript.yml) | [raw](splunk/proc_creation_win_userinitmprlogonscript.spl), [CIM](splunk/proc_creation_win_userinitmprlogonscript_cim.spl) | [MDE](sentinel/proc_creation_win_userinitmprlogonscript.kql), [SecurityEvent](sentinel/proc_creation_win_userinitmprlogonscript_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Rare: legacy logon script deployment

## Limitations
Changes made through the registry API (not a command line) are only visible with registry telemetry (Sysmon EID 13 or DeviceRegistryEvents on HKCU\Environment\UserInitMprLogonScript).

## Testing
See [tests/](tests/).
