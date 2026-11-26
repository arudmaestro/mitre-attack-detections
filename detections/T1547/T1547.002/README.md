# T1547.002 - Boot or Logon Autostart Execution: Authentication Package

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/002/
- **Platforms:** Windows

## Summary
Adversaries may abuse authentication packages to execute DLLs when the system boots.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| LSA Authentication Packages Changed | [sigma](sigma/registry_set_win_lsa_authentication_packages.yml) | [raw](splunk/registry_set_win_lsa_authentication_packages.spl) | [MDE](sentinel/registry_set_win_lsa_authentication_packages.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Smart card, MFA or credential-provider software installing an authentication package

## Testing
See [tests/](tests/).
