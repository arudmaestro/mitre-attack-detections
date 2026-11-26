# T1203 - Exploitation for Client Execution

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1203/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may exploit software vulnerabilities in client applications to execute code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Equation Editor Starting a Process | [sigma](sigma/proc_creation_win_equation_editor_child.yml) | [raw](splunk/proc_creation_win_equation_editor_child.spl), [CIM](splunk/proc_creation_win_equation_editor_child_cim.spl) | [MDE](sentinel/proc_creation_win_equation_editor_child.kql), [SecurityEvent](sentinel/proc_creation_win_equation_editor_child_securityevent.kql) | high | experimental |
| PDF Reader Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_pdf_reader_spawns_shell.yml) | [raw](splunk/proc_creation_win_pdf_reader_spawns_shell.spl), [CIM](splunk/proc_creation_win_pdf_reader_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_pdf_reader_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_pdf_reader_spawns_shell_securityevent.kql) | high | experimental |
| Web Browser Spawning a Shell or Script Host | [sigma](sigma/proc_creation_win_browser_spawns_shell.yml) | [raw](splunk/proc_creation_win_browser_spawns_shell.spl), [CIM](splunk/proc_creation_win_browser_spawns_shell_cim.spl) | [MDE](sentinel/proc_creation_win_browser_spawns_shell.kql), [SecurityEvent](sentinel/proc_creation_win_browser_spawns_shell_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- None expected: the Equation Editor does not start other programs
- PDF forms or plug-ins that launch scripts by design (rare)
- Browser extensions with native-messaging hosts that are scripts
- Users opening downloaded .bat/.cmd/.hta files directly from the browser's download bar

## Limitations
Exploits that stay in memory and never start a child process need EDR exploit-protection telemetry. Office documents starting shells are covered under T1204.002.

## Testing
See [tests/](tests/).
