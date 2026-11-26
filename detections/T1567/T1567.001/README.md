# T1567.001 - Exfiltration Over Web Service: Exfiltration to Code Repository

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1567/001/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may exfiltrate data to a code repository rather than over their primary command and control channel.

## Status: guidance only
Exfiltration to code repositories (GitHub, GitLab) uses git or HTTPS like normal developer work.

## How to detect it
- Proxy / DNS logs: large uploads to code hosting from hosts or users that are not developers; git push from servers.
- GitHub / GitLab audit logs for repositories created by employees outside the organisation, and DLP for source code.
