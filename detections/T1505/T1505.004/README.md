# T1505.004 - Server Software Component: IIS Components

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1505/004/
- **Platforms:** Windows

## Summary
Adversaries may install malicious components that run on Internet Information Services (IIS) web servers to establish persistence.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| IIS Native or Managed Module Installed | [sigma](sigma/proc_creation_win_iis_module_install.yml) | [raw](splunk/proc_creation_win_iis_module_install.spl), [CIM](splunk/proc_creation_win_iis_module_install_cim.spl) | [MDE](sentinel/proc_creation_win_iis_module_install.kql), [SecurityEvent](sentinel/proc_creation_win_iis_module_install_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- IIS administrators and application installers adding modules

## Limitations
Modules added by editing applicationHost.config directly need file monitoring of %windir%\System32\inetsrv\config. The IIS-Configuration operational log (event 29) records configuration changes.

## Testing
See [tests/](tests/).
