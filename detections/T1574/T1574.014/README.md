# T1574.014 - Hijack Execution Flow: AppDomainManager

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/014/
- **Platforms:** Windows

## Summary
Adversaries may execute their own malicious payloads by hijacking how the .NET `AppDomainManager` loads assemblies.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| .NET AppDomainManager Environment Variable Set | [sigma](sigma/registry_set_win_appdomain_manager_environment.yml) | [raw](splunk/registry_set_win_appdomain_manager_environment.spl), [CIM](splunk/registry_set_win_appdomain_manager_environment_cim.spl) | [MDE](sentinel/registry_set_win_appdomain_manager_environment.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- None expected

## Limitations
The more common variant places a .config file (with an appDomainManagerAssembly element) and a DLL next to a copied .NET program; that needs file events for *.exe.config files in user-writable folders and is not covered.

## Testing
See [tests/](tests/).
