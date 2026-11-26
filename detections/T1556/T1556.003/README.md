# T1556.003 - Modify Authentication Process: Pluggable Authentication Modules

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/003/
- **Platforms:** Linux, macOS

## Summary
Adversaries may modify pluggable authentication modules (PAM) to access user credentials or enable otherwise unwarranted access to accounts.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| PAM Configuration or Module Written from the Command Line | [sigma](sigma/proc_creation_lnx_pam_config_or_module_written.yml) | [CIM](splunk/proc_creation_lnx_pam_config_or_module_written.spl) | [MDE](sentinel/proc_creation_lnx_pam_config_or_module_written.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Configuration management, authconfig/authselect and package scripts changing PAM

## Limitations
Changes made with an editor, shell redirection or by package installs of a trojanised PAM package need file monitoring (auditd -w /etc/pam.d -p wa and on the pam_*.so files) and package integrity checks (rpm -V, debsums).

## Testing
See [tests/](tests/).
