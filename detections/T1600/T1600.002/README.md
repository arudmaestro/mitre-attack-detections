# T1600.002 - Weaken Encryption: Disable Crypto Hardware

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1600/002/
- **Platforms:** Network Devices

## Summary
Adversaries disable a network device’s dedicated hardware encryption, which may enable them to leverage weaknesses in software encryption in order to reduce the effort involved in collecting, manipulating, and exfiltrating transmitted data.

## Status: guidance only
Network device techniques run on routers, switches and firewalls; their logs (syslog, AAA, configuration archives) are not data sources of this project yet.

## How to detect it
- Configuration management: archive device configurations and alert on unapproved changes; compare OS image hashes with vendor-published values.
- AAA / TACACS+ command accounting and syslog for configuration changes, logins from unexpected sources and reloads.
- Monitor crypto hardware status on devices that have it (vendor health checks).
