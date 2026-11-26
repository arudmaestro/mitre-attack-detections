# T1547.007 - Boot or Logon Autostart Execution: Re-opened Applications

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/007/
- **Platforms:** macOS

## Summary
Adversaries may modify plist files to automatically run an application when a user logs in.

## Status: guidance only
Re-opened applications are stored in a per-user plist (com.apple.loginwindow.<UUID>.plist) that macOS rewrites at every logout.

## How to detect it
- Review the TALAppsToRelaunchAtLogin entries in ~/Library/Preferences/ByHost/com.apple.loginwindow.*.plist for unexpected applications.
- EDR file events for changes to that plist by processes other than loginwindow.
