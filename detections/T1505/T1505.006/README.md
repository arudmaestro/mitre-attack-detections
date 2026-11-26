# T1505.006 - Server Software Component: vSphere Installation Bundles

- **Tactic(s):** Persistence
- **ATT&CK link:** https://attack.mitre.org/techniques/T1505/006/
- **Platforms:** ESXi

## Summary
Adversaries may abuse vSphere Installation Bundles (VIBs) to establish persistent access to ESXi hypervisors.

## Status: guidance only
vSphere Installation Bundles are installed on ESXi hosts, whose logs are not covered by this project's data sources yet.

## How to detect it
- ESXi shell/hostd logs: esxcli software vib install with --no-sig-check or -f, and changes of the host acceptance level to CommunitySupported.
- Run esxcli software vib signature verify regularly and require Secure Boot / TPM attestation on hosts.
