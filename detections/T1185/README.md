# T1185 - Browser Session Hijacking

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1185/
- **Platforms:** Windows

## Summary
Adversaries may take advantage of security vulnerabilities and inherent functionality in browser software to change content, modify user-behaviors, and intercept information as part of various browser session hijacking techniques.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Browser Started with Remote Debugging Enabled | [sigma](sigma/proc_creation_win_browser_remote_debugging.yml) | [raw](splunk/proc_creation_win_browser_remote_debugging.spl), [CIM](splunk/proc_creation_win_browser_remote_debugging_cim.spl) | [MDE](sentinel/proc_creation_win_browser_remote_debugging.kql), [SecurityEvent](sentinel/proc_creation_win_browser_remote_debugging_securityevent.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers and test automation (Puppeteer, Playwright, Selenium)

## Limitations
Session theft by other means (cookie database copies, malicious extensions, AiTM proxies) is not covered.

## Testing
See [tests/](tests/).
