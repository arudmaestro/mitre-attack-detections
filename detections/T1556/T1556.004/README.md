# T1556.004 - Modify Authentication Process: Network Device Authentication

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/004/
- **Platforms:** Network Devices

## Summary
Adversaries may use Patch System Image to hard code a password in the operating system, thus bypassing of native authentication mechanisms for local accounts on network devices.

## Status: guidance only
Network device authentication is changed by patching the device image.

## How to detect it
- Network device image integrity checks (compare image hashes with vendor values), AAA/TACACS logs, and alerts for logins with local accounts that should not be used.
