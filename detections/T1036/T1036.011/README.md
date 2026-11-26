# T1036.011 - Masquerading: Overwrite Process Arguments

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/011/
- **Platforms:** Linux

## Summary
Adversaries may modify a process's in-memory arguments to change its name in order to appear as a legitimate or benign process.

## Status: guidance only
Overwriting process arguments in memory changes what /proc shows after the process starts; the original command line is only captured at exec time.

## How to detect it
- auditd execve records (captured at exec) compared with later /proc/<pid>/cmdline snapshots.
- EDR telemetry that records the original command line.
