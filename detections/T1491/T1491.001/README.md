# T1491.001 - Defacement: Internal Defacement

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1491/001/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
An adversary may deface systems internal to an organization in an attempt to intimidate or mislead users, thus discrediting the integrity of the systems.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Desktop Wallpaper Set to an Image in Temp, ProgramData or Public | [sigma](sigma/registry_set_win_wallpaper_from_temp_or_public.yml) | [raw](splunk/registry_set_win_wallpaper_from_temp_or_public.spl) | [MDE](sentinel/registry_set_win_wallpaper_from_temp_or_public.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Desktop customisation tools that store wallpapers in ProgramData

## Limitations
Wallpaper policies pushed by Group Policy are written by the Group Policy service (svchost.exe); review those once and exclude them if they point to ProgramData.

## Testing
See [tests/](tests/).
