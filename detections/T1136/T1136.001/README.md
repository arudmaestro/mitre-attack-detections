# T1136.001 - Create Account: Local Account

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1136/001/
- **Platforms:** Containers, ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may create a local account to maintain access to victim systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Local Account Created from the Command Line | [sigma](sigma/proc_creation_win_local_account_created.yml) | [raw](splunk/proc_creation_win_local_account_created.spl), [CIM](splunk/proc_creation_win_local_account_created_cim.spl) | [MDE](sentinel/proc_creation_win_local_account_created.kql), [SecurityEvent](sentinel/proc_creation_win_local_account_created_securityevent.kql) | medium | experimental |
| Local Account Created on Linux | [sigma](sigma/proc_creation_lnx_local_account_created.yml) | [CIM](splunk/proc_creation_lnx_local_account_created.spl) | [MDE](sentinel/proc_creation_lnx_local_account_created.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and provisioning scripts
- Administrators, package installs creating service accounts, configuration management

## Limitations
The Windows Security 4720 rule in the parent T1136 folder covers accounts created through the GUI or APIs.

## Testing
See [tests/](tests/).
