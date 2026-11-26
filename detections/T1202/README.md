# T1202 - Indirect Command Execution

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1202/
- **Platforms:** Windows

## Summary
Adversaries may abuse utilities that allow for command execution to bypass security restrictions that limit the use of command-line interpreters.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Indirect Command Execution through pcalua or forfiles | [sigma](sigma/proc_creation_win_indirect_exec_pcalua_forfiles.yml) | [raw](splunk/proc_creation_win_indirect_exec_pcalua_forfiles.spl), [CIM](splunk/proc_creation_win_indirect_exec_pcalua_forfiles_cim.spl) | [MDE](sentinel/proc_creation_win_indirect_exec_pcalua_forfiles.kql), [SecurityEvent](sentinel/proc_creation_win_indirect_exec_pcalua_forfiles_securityevent.kql) | medium | experimental |
| Command Started through a Headless conhost | [sigma](sigma/proc_creation_win_conhost_headless.yml) | [raw](splunk/proc_creation_win_conhost_headless.spl), [CIM](splunk/proc_creation_win_conhost_headless_cim.spl) | [MDE](sentinel/proc_creation_win_conhost_headless.kql), [SecurityEvent](sentinel/proc_creation_win_conhost_headless_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Windows program compatibility prompts started by pcalua
- Maintenance scripts that use forfiles to run a program per file
- Rare: tools that start background consoles this way

## Limitations
forfiles commands that call cmd.exe (forfiles /c "cmd /c ...") are excluded because cleanup scripts use that form; the payload then appears as a child of cmd.exe and is covered by other execution rules.

## Testing
See [tests/](tests/).
