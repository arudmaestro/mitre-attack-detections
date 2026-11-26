# T1072 - Software Deployment Tools

- **Tactic(s):** Execution, Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1072/
- **Platforms:** Linux, macOS, Network Devices, SaaS, Windows

## Summary
Adversaries may gain access to and use centralized software suites installed within an enterprise to execute commands and move laterally through the network.

## Status: guidance only
Software deployment tools (SCCM, PDQ, Intune, Tanium, Ansible) legitimately run commands on many hosts; abuse looks like normal deployment.

## How to detect it
- Audit logs of the deployment platform itself: new packages, scripts or deployments, especially outside change windows or by unusual admins.
- Endpoint: unusual child processes of deployment agents (e.g. CcmExec.exe spawning PowerShell with encoded commands) baselined per environment.
