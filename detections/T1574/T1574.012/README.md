# T1574.012 - Hijack Execution Flow: COR_PROFILER

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/012/
- **Platforms:** Windows

## Summary
Adversaries may leverage the COR_PROFILER environment variable to hijack the execution flow of programs that load the .NET CLR.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| .NET Profiler Environment Variable Set (COR_PROFILER) | [sigma](sigma/registry_set_win_cor_profiler_environment.yml) | [raw](splunk/registry_set_win_cor_profiler_environment.spl), [CIM](splunk/registry_set_win_cor_profiler_environment_cim.spl) | [MDE](sentinel/registry_set_win_cor_profiler_environment.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- APM and profiling agents (Dynatrace, AppDynamics, New Relic, Datadog) that register a .NET profiler

## Limitations
Profiler variables set for a single process (in the parent's environment or a service's Environment value) without a registry change are not covered.

## Testing
See [tests/](tests/).
