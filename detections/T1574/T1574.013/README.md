# T1574.013 - Hijack Execution Flow: KernelCallbackTable

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/013/
- **Platforms:** Windows

## Summary
Adversaries may abuse the KernelCallbackTable of a process to hijack its execution flow in order to run their own payloads.

## Status: guidance only
KernelCallbackTable hijacking changes a pointer table in another process's memory.

## How to detect it
- EDR alerts for remote memory writes (WriteProcessMemory) into GUI processes followed by message-triggered execution (the technique used by FinFisher and Lazarus).
