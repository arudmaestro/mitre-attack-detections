# T1176.001 - Software Extensions: Browser Extensions

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1176/001/
- **Platforms:** Linux, Windows, macOS

## Summary
Adversaries may abuse internet browser extensions to establish persistent access to victim systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Browser Started with --load-extension | [sigma](sigma/proc_creation_win_browser_load_extension_flag.yml) | [raw](splunk/proc_creation_win_browser_load_extension_flag.spl), [CIM](splunk/proc_creation_win_browser_load_extension_flag_cim.spl) | [MDE](sentinel/proc_creation_win_browser_load_extension_flag.kql), [SecurityEvent](sentinel/proc_creation_win_browser_load_extension_flag_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Extension developers and browser automation (Selenium, Puppeteer)

## Limitations
Extensions installed from the store or by policy do not use this flag; browser management (Chrome/Edge extension inventory, policy allowlists) covers those.

## Testing
See [tests/](tests/).
