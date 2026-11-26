# T1564.002 - Hide Artifacts: Hidden Users

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/002/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use hidden users to hide the presence of user accounts they create or modify.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| User Account Hidden from the Logon Screen | [sigma](sigma/registry_set_win_user_hidden_from_logon_screen.yml) | [raw](splunk/registry_set_win_user_hidden_from_logon_screen.spl), [CIM](splunk/registry_set_win_user_hidden_from_logon_screen_cim.spl) | [MDE](sentinel/registry_set_win_user_hidden_from_logon_screen.kql) | high | experimental |
| User Account Hidden on macOS | [sigma](sigma/proc_creation_macos_hidden_user.yml) | [CIM](splunk/proc_creation_macos_hidden_user.spl) | [MDE](sentinel/proc_creation_macos_hidden_user.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- OEM and management software hiding service or support accounts
- MDM scripts creating hidden local admin accounts for support

## Limitations
Accounts can also be hidden on macOS by giving them a UID below 500 at creation; review new accounts (T1136.001) in either case.

## Testing
See [tests/](tests/).
