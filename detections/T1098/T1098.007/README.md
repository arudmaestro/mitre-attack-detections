# T1098.007 - Account Manipulation: Additional Local or Domain Groups

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1098/007/
- **Platforms:** Windows, macOS, Linux

## Summary
An adversary may add additional local or domain groups to an adversary-controlled account to maintain persistent access to a system or domain.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Member Added to a Privileged Windows Group | [sigma](sigma/win_security_member_added_to_privileged_group.yml) | [raw](splunk/win_security_member_added_to_privileged_group.spl) | [SecurityEvent](sentinel/win_security_member_added_to_privileged_group.kql) | high | experimental |
| Privileged Group Membership Added from the Command Line | [sigma](sigma/proc_creation_win_privileged_group_member_added.yml) | [raw](splunk/proc_creation_win_privileged_group_member_added.spl), [CIM](splunk/proc_creation_win_privileged_group_member_added_cim.spl) | [MDE](sentinel/proc_creation_win_privileged_group_member_added.kql), [SecurityEvent](sentinel/proc_creation_win_privileged_group_member_added_securityevent.kql) | medium | experimental |
| User Added to sudo, wheel or root Group | [sigma](sigma/proc_creation_lnx_user_added_to_admin_group.yml) | [CIM](splunk/proc_creation_lnx_user_added_to_admin_group.spl) | [MDE](sentinel/proc_creation_lnx_user_added_to_admin_group.kql) | medium | experimental |

## Required data sources
- Splunk: Windows Security event log (raw search, event ID in the rule). Sentinel: `SecurityEvent`.
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators granting rights through change control
- Administrators and provisioning scripts
- Administrators and provisioning tools

## Limitations
The Windows Security rule needs 'Audit Security Group Management'; group names are matched in English, so add localised names if your systems use another language. Direct edits of /etc/group or /etc/sudoers on Linux are not covered.

## Testing
See [tests/](tests/).
