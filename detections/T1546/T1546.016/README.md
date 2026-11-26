# T1546.016 - Event Triggered Execution: Installer Packages

- **Tactic(s):** Privilege Escalation, Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1546/016/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may establish persistence and elevate privileges by using an installer to trigger the execution of malicious content.

## Status: guidance only
Installer package scripts (preinstall/postinstall, MSI custom actions, deb/rpm maintainer scripts) run as part of normal installs.

## How to detect it
- Allow only signed packages from approved sources; macOS: check package signatures and notarisation.
- Behaviour of installer children: installer processes (installer, msiexec, dpkg, rpm) starting network tools or shells that connect out.
