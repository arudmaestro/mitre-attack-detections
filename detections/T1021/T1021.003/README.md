# T1021.003 - Remote Services: Distributed Component Object Model

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/003/
- **Platforms:** Windows

## Summary
Adversaries may use Valid Accounts to interact with remote machines by taking advantage of Distributed Component Object Model (DCOM).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| MMC Spawning a Shell (MMC20.Application DCOM) | [sigma](sigma/proc_creation_win_mmc_spawning_shell.yml) | [raw](splunk/proc_creation_win_mmc_spawning_shell.spl), [CIM](splunk/proc_creation_win_mmc_spawning_shell_cim.spl) | [MDE](sentinel/proc_creation_win_mmc_spawning_shell.kql), [SecurityEvent](sentinel/proc_creation_win_mmc_spawning_shell_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators starting a shell from an MMC snap-in

## Limitations
Covers the MMC20.Application method. Other DCOM objects (ShellWindows, ShellBrowserWindow, Excel.Application) spawn from explorer.exe or excel.exe and need separate rules.

## Testing
See [tests/](tests/).
