# T1027.018 - Obfuscated Files or Information: Invisible Unicode

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1027/018/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may abuse invisible or non-printing Unicode characters to conceal malicious content within files, scripts, or text.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Invisible Unicode Characters in Script Interpreter Command Line | [sigma](sigma/proc_creation_win_invisible_unicode_in_script_interpreter.yml) | [raw](splunk/proc_creation_win_invisible_unicode_in_script_interpreter.spl), [CIM](splunk/proc_creation_win_invisible_unicode_in_script_interpreter_cim.spl) | [MDE](sentinel/proc_creation_win_invisible_unicode_in_script_interpreter.kql), [SecurityEvent](sentinel/proc_creation_win_invisible_unicode_in_script_interpreter_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Scripts handling text in languages that use zero-width joiners (e.g. Persian, Indic scripts) or emoji

## Limitations
The generated Splunk and KQL queries contain the invisible characters themselves; copy the files as they are and do not retype the strings. Invisible characters inside script files are only visible with PowerShell Script Block Logging (4104) or file scanning.

## Testing
See [tests/](tests/).
