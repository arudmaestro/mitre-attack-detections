# T1679 - Selective Exclusion

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1679/
- **Platforms:** Windows

## Summary
Adversaries may intentionally exclude certain files, folders, directories, file types, or system components from encryption or tampering during a ransomware or malicious payload execution.

## Status: guidance only
Selective exclusion is a list of files and folders inside ransomware that it does not encrypt.

## How to detect it
- Detect the encryption itself: mass file renames and writes (EDR, canary files), and the ransomware preparation steps (T1490 shadow copy deletion, T1685 security tool tampering).
