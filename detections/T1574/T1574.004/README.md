# T1574.004 - Hijack Execution Flow: Dylib Hijacking

- **Tactic(s):** Stealth, Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1574/004/
- **Platforms:** macOS

## Summary
Adversaries may execute their own payloads by placing a malicious dynamic library (dylib) with an expected name in a path a victim application searches at runtime.

## Status: guidance only
Dylib hijacking places a library where a macOS program looks for it (weak or @rpath load commands); it is a file write.

## How to detect it
- EDR file events for new .dylib files next to applications in user-writable locations; tools such as Dylib Hijack Scanner to find vulnerable apps.
