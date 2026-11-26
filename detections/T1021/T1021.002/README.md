# T1021.002 - Remote Services: SMB/Windows Admin Shares

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1021/002/
- **Platforms:** Windows

## Summary
Adversaries may use Valid Accounts to interact with a remote network share using Server Message Block (SMB).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Admin Share Mapped via net use | [sigma](sigma/proc_creation_win_net_use_admin_share.yml) | [raw](splunk/proc_creation_win_net_use_admin_share.spl), [CIM](splunk/proc_creation_win_net_use_admin_share_cim.spl) | [MDE](sentinel/proc_creation_win_net_use_admin_share.kql), [SecurityEvent](sentinel/proc_creation_win_net_use_admin_share_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Administrators and deployment tools mapping admin shares

## Limitations
Tools such as PsExec and Impacket access admin shares over SMB without net.exe. Windows Security 5140/5145 (file share access) on the target host covers those.

## Testing
See [tests/](tests/).
