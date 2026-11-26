# T1564.012 - Hide Artifacts: File/Path Exclusions

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/012/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may attempt to hide their file-based artifacts by writing them to specific folders or file names excluded from antivirus (AV) scanning and other defensive capabilities.

## Status: guidance only
File and path exclusions are specific to each security product's configuration; files written to excluded folders look like any other file write.

## How to detect it
- Review and minimise security-tool exclusions; alert on new executables written into excluded paths (EDR file events filtered by your exclusion list).
- Changes to Defender exclusions themselves (registry Windows Defender\Exclusions, Add-MpPreference -ExclusionPath) are detected by the T1685 rules (Defender exclusion added with PowerShell or in the registry).
