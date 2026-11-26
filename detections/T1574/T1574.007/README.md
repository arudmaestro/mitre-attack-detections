# T1574.007 - Hijack Execution Flow: Path Interception by PATH Environment Variable

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/007/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may execute their own malicious payloads by hijacking environment variables used to load libraries.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| System PATH Changed to Include a Temp, Public or Downloads Folder | [sigma](sigma/registry_set_win_system_path_user_folder.yml) | [raw](splunk/registry_set_win_system_path_user_folder.spl), [CIM](splunk/registry_set_win_system_path_user_folder_cim.spl) | [MDE](sentinel/registry_set_win_system_path_user_folder.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Badly written installers that add their temporary folder to the Path

## Limitations
Per-user Path changes (HKCU\Environment\Path, which normally contains user folders such as WindowsApps) and PATH changes in Linux/macOS shell files are not covered; also review writable folders that already appear early in the machine Path.

## Testing
See [tests/](tests/).
