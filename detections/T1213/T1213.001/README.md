# T1213.001 - Data from Information Repositories: Confluence

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1213/001/
- **Platforms:** SaaS

## Summary
Adversaries may leverage Confluence repositories to mine valuable information.

## Status: guidance only
Confluence access is logged by Confluence, not by endpoints.

## How to detect it
- Confluence audit log / access logs: one user viewing or exporting many pages or spaces in a short time, space exports, API token use from new IPs.
