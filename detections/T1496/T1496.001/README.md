# T1496.001 - Resource Hijacking: Compute Hijacking

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1496/001/
- **Platforms:** Windows, IaaS, Linux, macOS, Containers

## Summary
Adversaries may leverage the compute resources of co-opted systems to complete resource-intensive tasks, which may impact system and/or hosted service availability.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Cryptocurrency Miner Command Line on Windows | [sigma](sigma/proc_creation_win_cryptominer.yml) | [raw](splunk/proc_creation_win_cryptominer.spl), [CIM](splunk/proc_creation_win_cryptominer_cim.spl) | [MDE](sentinel/proc_creation_win_cryptominer.kql), [SecurityEvent](sentinel/proc_creation_win_cryptominer_securityevent.kql) | high | experimental |
| Cryptocurrency Miner Command Line on Linux | [sigma](sigma/proc_creation_lnx_cryptominer.yml) | [CIM](splunk/proc_creation_lnx_cryptominer.spl) | [MDE](sentinel/proc_creation_lnx_cryptominer.kql) | high | experimental |
| Cryptocurrency Miner Command Line on macOS | [sigma](sigma/proc_creation_macos_cryptominer.yml) | [CIM](splunk/proc_creation_macos_cryptominer.spl) | [MDE](sentinel/proc_creation_macos_cryptominer.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Authorised mining or miner research systems

## Limitations
Miners that read their pool from a config file have no pool URL on the command line; add network detections for connections to mining pools (common ports 3333, 4444, 5555, 7777, 14444) and sustained high CPU from unknown processes. Cloud compute hijacking (new large instances in unused regions) needs CloudTrail RunInstances monitoring.

## Testing
See [tests/](tests/).
