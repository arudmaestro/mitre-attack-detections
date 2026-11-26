# T1218.011 - System Binary Proxy Execution: Rundll32

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1218/011/
- **Platforms:** Windows

## Summary
Adversaries may abuse rundll32.exe to proxy execution of malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Rundll32 Running Inline JavaScript through mshtml | [sigma](sigma/proc_creation_win_rundll32_inline_script.yml) | [raw](splunk/proc_creation_win_rundll32_inline_script.spl), [CIM](splunk/proc_creation_win_rundll32_inline_script_cim.spl) | [MDE](sentinel/proc_creation_win_rundll32_inline_script.kql), [SecurityEvent](sentinel/proc_creation_win_rundll32_inline_script_securityevent.kql) | high | experimental |
| Rundll32 Started without Arguments | [sigma](sigma/proc_creation_win_rundll32_no_arguments.yml) | [raw](splunk/proc_creation_win_rundll32_no_arguments.spl), [CIM](splunk/proc_creation_win_rundll32_no_arguments_cim.spl) | [MDE](sentinel/proc_creation_win_rundll32_no_arguments.kql), [SecurityEvent](sentinel/proc_creation_win_rundll32_no_arguments_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- None expected
- Rare: broken shortcuts or scripts calling rundll32 without arguments

## Limitations
The no-arguments rule matches an unquoted program path (C:\Windows\System32\rundll32.exe). A quoted path without arguments (ending in a double quote) is not matched; add it in your SIEM if you see that form.

## Testing
See [tests/](tests/).
