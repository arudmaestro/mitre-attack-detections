# T1559.003 - Inter-Process Communication: XPC Services

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1559/003/
- **Platforms:** macOS

## Summary
Adversaries can provide malicious content to an XPC service daemon for local code execution.

## Status: guidance only
XPC is a macOS inter-process communication API; messages sent to XPC services leave no process or command-line event.

## How to detect it
- EDR on macOS for privileged helper tools (in /Library/PrivilegedHelperTools) receiving connections from unsigned or unexpected clients.
- Patch third-party privileged helpers with known XPC validation bugs.
