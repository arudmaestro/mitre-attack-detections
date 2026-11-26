# T1600.001 - Weaken Encryption: Reduce Key Space

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1600/001/
- **Platforms:** Network Devices

## Summary
Adversaries may reduce the level of effort required to decrypt data transmitted over the network by reducing the cipher strength of encrypted communications.

## Status: guidance only
Network device techniques run on routers, switches and firewalls; their logs (syslog, AAA, configuration archives) are not data sources of this project yet.

## How to detect it
- Configuration management: archive device configurations and alert on unapproved changes; compare OS image hashes with vendor-published values.
- AAA / TACACS+ command accounting and syslog for configuration changes, logins from unexpected sources and reloads.
- Check VPN and SSH crypto settings (key sizes, ciphers) against a baseline regularly.
