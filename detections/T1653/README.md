# T1653 - Power Settings

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1653/
- **Platforms:** Windows, Linux, macOS, Network Devices

## Summary
Adversaries may impair a system's ability to hibernate, reboot, or shut down in order to extend access to infected machines.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Sleep or Hibernation Settings Changed with powercfg | [sigma](sigma/proc_creation_win_powercfg_sleep_disabled.yml) | [raw](splunk/proc_creation_win_powercfg_sleep_disabled.spl), [CIM](splunk/proc_creation_win_powercfg_sleep_disabled_cim.spl) | [MDE](sentinel/proc_creation_win_powercfg_sleep_disabled.kql), [SecurityEvent](sentinel/proc_creation_win_powercfg_sleep_disabled_securityevent.kql) | low | experimental |
| Sleep or Hibernate Targets Masked with systemctl | [sigma](sigma/proc_creation_lnx_sleep_targets_masked.yml) | [CIM](splunk/proc_creation_lnx_sleep_targets_masked.spl) | [MDE](sentinel/proc_creation_lnx_sleep_targets_masked.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Power-management GPOs and scripts on kiosks, servers and lab machines
- Server and kiosk builds that disable sleep on purpose

## Limitations
Programs that block sleep through the API (SetThreadExecutionState, caffeinate on macOS, systemd-inhibit) are not covered.

## Testing
See [tests/](tests/).
