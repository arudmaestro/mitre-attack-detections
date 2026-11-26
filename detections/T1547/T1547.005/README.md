# T1547.005 - Boot or Logon Autostart Execution: Security Support Provider

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/005/
- **Platforms:** Windows

## Summary
Adversaries may abuse security support providers (SSPs) to execute DLLs when the system boots.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| LSA Security Support Providers Changed | [sigma](sigma/registry_set_win_lsa_security_packages.yml) | [raw](splunk/registry_set_win_lsa_security_packages.spl) | [MDE](sentinel/registry_set_win_lsa_security_packages.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Security or authentication software installing an SSP

## Limitations
SSPs loaded at runtime with AddSecurityPackage (no registry change) need EDR or LSASS module-load telemetry.

## Testing
See [tests/](tests/).
