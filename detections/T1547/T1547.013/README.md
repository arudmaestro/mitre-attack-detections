# T1547.013 - Boot or Logon Autostart Execution: XDG Autostart Entries

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/013/
- **Platforms:** Linux

## Summary
Adversaries may add or modify XDG Autostart Entries to execute malicious programs or commands when a user’s desktop environment is loaded at login.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| XDG Autostart Entry Written from the Command Line | [sigma](sigma/proc_creation_lnx_xdg_autostart_written.yml) | [CIM](splunk/proc_creation_lnx_xdg_autostart_written.spl) | [MDE](sentinel/proc_creation_lnx_xdg_autostart_written.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Desktop applications and installers adding autostart entries

## Limitations
Entries written by programs directly need file monitoring of ~/.config/autostart and /etc/xdg/autostart.

## Testing
See [tests/](tests/).
