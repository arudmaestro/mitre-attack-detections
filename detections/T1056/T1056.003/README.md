# T1056.003 - Input Capture: Web Portal Capture

- **Tactic(s):** Collection, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1056/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may install code on externally facing portals, such as a VPN login page, to capture and transmit credentials of users who attempt to log into the service.

## Status: guidance only
Web portal capture is done by modifying a web login page on a server the adversary controls or has compromised.

## How to detect it
- File integrity monitoring on web servers (login pages, VPN portal files).
- Web server logs for unexpected changes or outbound requests from portal pages.
