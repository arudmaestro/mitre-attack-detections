# T1559.002 - Inter-Process Communication: Dynamic Data Exchange

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1559/002/
- **Platforms:** Windows

## Summary
Adversaries may use Windows Dynamic Data Exchange (DDE) to execute arbitrary commands.

## Status: guidance only
DDE runs commands from Office documents through the Office process itself; the command it starts is the visible part.

## How to detect it
- Office applications starting cmd, PowerShell or script hosts are detected by the T1204.002 (office_spawns_shell) and T1059.003 (office_spawn_cmd) rules.
- Disable DDE / automatic link updates in Office and Outlook (Office security updates turn it off by default); block DDE fields with ASR rules.
