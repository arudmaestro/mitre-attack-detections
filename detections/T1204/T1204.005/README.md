# T1204.005 - User Execution: Malicious Library

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1204/005/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may rely on a user installing a malicious library to facilitate execution.

## Status: guidance only
Malicious libraries (npm, PyPI and similar packages) are installed through the normal package manager.

## How to detect it
- Software composition analysis and package allowlists / private mirrors in CI/CD.
- Developer endpoints and build servers: package-manager processes (node, python, pip) starting shells or making unexpected network connections.
