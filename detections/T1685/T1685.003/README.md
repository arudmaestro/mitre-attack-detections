# T1685.003 - Disable or Modify Tools: Modify or Spoof Tool UI

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1685/003/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may spoof or manipulate security tool user interfaces (UIs) to falsely indicate tools are functioning normally and delay detection and response.

## Status: guidance only
Spoofed security tool interfaces change what the user or admin sees on the host; the real agent status is visible only centrally.

## How to detect it
- Check agent health from the management console, not from the endpoint UI; alert on agents that stop reporting or report stale data.
