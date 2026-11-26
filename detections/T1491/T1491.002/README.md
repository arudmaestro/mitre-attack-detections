# T1491.002 - Defacement: External Defacement

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1491/002/
- **Platforms:** Windows, IaaS, Linux, macOS

## Summary
An adversary may deface systems external to an organization in an attempt to deliver messaging, intimidate, or otherwise mislead an organization or users.

## Status: guidance only
External defacement changes public web content, usually through the web application or hosting account.

## How to detect it
- File-integrity monitoring of web roots and CDN/hosting audit logs (content uploads, deployments outside the release process).
- External uptime/content monitoring that compares pages against a known-good copy.
