# T1677 - Poisoned Pipeline Execution

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1677/
- **Platforms:** SaaS

## Summary
Adversaries may manipulate continuous integration / continuous development (CI/CD) processes by injecting malicious code into the build process.

## Status: guidance only
Poisoned pipeline execution changes CI/CD configuration or build scripts in source repositories (GitHub, GitLab, Azure DevOps).

## How to detect it
- Repository and CI audit logs: changes to pipeline files (.github/workflows, .gitlab-ci.yml, azure-pipelines.yml) from forks or unusual users, and pipelines run for pull requests from forks.
- Branch protection, required reviews for pipeline files, and least-privilege CI secrets.
