# T1201 - Password Policy Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1201/
- **Platforms:** Windows, Linux, macOS, IaaS, Network Devices, Identity Provider, SaaS, Office Suite

## Summary
Adversaries may attempt to access detailed information about the password policy used within an enterprise network or cloud environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Password Policy Discovery on Windows | [sigma](sigma/proc_creation_win_password_policy_discovery.yml) | [raw](splunk/proc_creation_win_password_policy_discovery.spl), [CIM](splunk/proc_creation_win_password_policy_discovery_cim.spl) | [MDE](sentinel/proc_creation_win_password_policy_discovery.kql), [SecurityEvent](sentinel/proc_creation_win_password_policy_discovery_securityevent.kql) | low | experimental |
| Password Policy Discovery on Linux | [sigma](sigma/proc_creation_lnx_password_policy_discovery.yml) | [CIM](splunk/proc_creation_lnx_password_policy_discovery.spl) | [MDE](sentinel/proc_creation_lnx_password_policy_discovery.kql) | low | experimental |
| Password Policy Discovery with pwpolicy | [sigma](sigma/proc_creation_macos_pwpolicy_discovery.yml) | [CIM](splunk/proc_creation_macos_pwpolicy_discovery.spl) | [MDE](sentinel/proc_creation_macos_pwpolicy_discovery.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Administrators and audit scripts reviewing password policy
- Administrators and compliance scanners checking password settings
- Administrators and MDM or compliance tools checking password settings

## Limitations
Policy discovery through LDAP queries (e.g. reading the domain object's minPwdLength) or cloud/IdP APIs does not create these process events. These rules are for hunting and correlation with other discovery.

## Testing
See [tests/](tests/).
