# T1574.006 - Hijack Execution Flow: Dynamic Linker Hijacking

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/006/
- **Platforms:** Linux, macOS

## Summary
Adversaries may execute their own malicious payloads by hijacking environment variables the dynamic linker uses to load shared libraries.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Dynamic Linker Preload File Written from the Command Line | [sigma](sigma/proc_creation_lnx_ld_so_preload_written.yml) | [CIM](splunk/proc_creation_lnx_ld_so_preload_written.spl) | [MDE](sentinel/proc_creation_lnx_ld_so_preload_written.kql) | high | experimental |
| LD_PRELOAD Set on the Command Line on Linux | [sigma](sigma/proc_creation_lnx_ld_preload_command_line.yml) | [CIM](splunk/proc_creation_lnx_ld_preload_command_line.spl) | [MDE](sentinel/proc_creation_lnx_ld_preload_command_line.kql) | medium | experimental |
| DYLD_INSERT_LIBRARIES Set on the Command Line on macOS | [sigma](sigma/proc_creation_macos_dyld_insert_libraries.yml) | [CIM](splunk/proc_creation_macos_dyld_insert_libraries.spl) | [MDE](sentinel/proc_creation_macos_dyld_insert_libraries.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Rare: performance and debugging tools installed system-wide
- Developers and profiling tools (e.g. jemalloc, libfaketime) preloading libraries
- Developers and debugging tools injecting libraries into their own builds

## Limitations
Variables set with export in a shell or in shell configuration files do not appear on a command line; auditd -w /etc/ld.so.preload -p wa and EDR process environment telemetry cover those. On macOS, hardened runtime and SIP block DYLD_INSERT_LIBRARIES for protected programs.

## Testing
See [tests/](tests/).
