# T1548.003 - Abuse Elevation Control Mechanism: Sudo and Sudo Caching

- **Tactic(s):** Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1548/003/
- **Platforms:** Linux, macOS

## Summary
Adversaries may perform sudo caching and/or use the sudoers file to elevate privileges.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Sudoers File Written from the Command Line on Linux | [sigma](sigma/proc_creation_lnx_sudoers_written.yml) | [CIM](splunk/proc_creation_lnx_sudoers_written.spl) | [MDE](sentinel/proc_creation_lnx_sudoers_written.kql) | medium | experimental |
| Sudoers File Written from the Command Line on macOS | [sigma](sigma/proc_creation_macos_sudoers_written.yml) | [CIM](splunk/proc_creation_macos_sudoers_written.spl) | [MDE](sentinel/proc_creation_macos_sudoers_written.kql) | medium | experimental |
| Sudo Run with User ID -1 (CVE-2019-14287) | [sigma](sigma/proc_creation_lnx_sudo_negative_user_id.yml) | [CIM](splunk/proc_creation_lnx_sudo_negative_user_id.spl) | [MDE](sentinel/proc_creation_lnx_sudo_negative_user_id.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Configuration management (Ansible, Puppet) and administrators changing sudo rules
- MDM scripts and administrators changing sudo rules
- None expected

## Limitations
Edits made with visudo or an editor (vi /etc/sudoers) and shell redirection (echo ... >> /etc/sudoers) do not match the first two rules; file monitoring (auditd -w /etc/sudoers -w /etc/sudoers.d -p wa) covers them. Abuse of cached sudo credentials (sudo without a password inside the timeout) leaves only normal sudo logs.

## Testing
See [tests/](tests/).
