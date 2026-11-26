# T1614.001 - System Location Discovery: System Language Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1614/001/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to gather information about the system language of a victim in order to infer the geographical location of that host.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| System Language or Keyboard Layout Queried from the Command Line | [sigma](sigma/proc_creation_win_system_language_discovery.yml) | [raw](splunk/proc_creation_win_system_language_discovery.spl), [CIM](splunk/proc_creation_win_system_language_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_system_language_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_system_language_discovery_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Inventory and localisation scripts

## Limitations
Malware usually calls GetUserDefaultUILanguage or GetKeyboardLayoutList through the API, which leaves no command line; this rule only catches script-based checks. Linux 'locale' commands are too common to alert on.

## Testing
See [tests/](tests/).
