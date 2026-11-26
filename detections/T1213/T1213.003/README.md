# T1213.003 - Data from Information Repositories: Code Repositories

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1213/003/
- **Platforms:** SaaS

## Summary
Adversaries may leverage code repositories to collect valuable information.

## Status: guidance only
Code repository access is logged by the code hosting platform.

## How to detect it
- GitHub / GitLab / Azure DevOps audit logs: mass repository clones, new personal access tokens or SSH keys, access from new IPs, cloning of repositories the user never used.
