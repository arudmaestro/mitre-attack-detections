# T1574.010 - Hijack Execution Flow: Services File Permissions Weakness

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/010/
- **Platforms:** Windows

## Summary
Adversaries may execute their own malicious payloads by hijacking the binaries used by services.

## Status: guidance only
Weak service file permissions let attackers overwrite a service binary; the service keeps its normal path.

## How to detect it
- File integrity monitoring of service binaries; alert when a service binary's hash or signer changes outside patching.
- Audit service binary ACLs (accesschk -wuvc / icacls) and fix world-writable ones.
