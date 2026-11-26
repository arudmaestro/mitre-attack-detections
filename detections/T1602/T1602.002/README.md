# T1602.002 - Data from Configuration Repository: Network Device Configuration Dump

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1602/002/
- **Platforms:** Network Devices

## Summary
Adversaries may access network configuration files to collect sensitive data about the device and the network.

## Status: guidance only
Network device techniques run on routers, switches and firewalls; their logs (syslog, AAA, configuration archives) are not data sources of this project yet.

## How to detect it
- AAA command logs for 'show running-config', 'copy running-config' / 'copy startup-config' to TFTP/FTP/SCP, and SNMP writes to the CISCO-CONFIG-COPY-MIB.
- Restrict TFTP / SNMP write access on devices; store configuration backups encrypted and monitor who reads them.
