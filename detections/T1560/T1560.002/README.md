# T1560.002 - Archive Collected Data: Archive via Library

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1560/002/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary may compress or encrypt data that is collected prior to exfiltration using 3rd party libraries.

## Status: guidance only
Archive libraries (zlib, Python zipfile, .NET ZipFile) compress data inside the program, with no archiver process.

## How to detect it
- EDR file events: archive files (.zip, .7z, .rar, .tar.gz) created in temp or user folders by scripting engines or unusual programs, especially large ones followed by network uploads.
