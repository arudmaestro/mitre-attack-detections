# T1221 - Template Injection

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1221/
- **Platforms:** Windows

## Summary
Adversaries may create or modify references in user document templates to conceal malicious code or force authentication attempts.

## Status: guidance only
Template injection hides a remote template reference inside an Office document; the fetch looks like normal Office network traffic.

## How to detect it
- Mail/file analysis: .docx/.xlsx with attachedTemplate relationships pointing to http(s) or UNC paths (settings.xml.rels).
- Network: Office applications connecting to IP addresses or new domains over HTTP/SMB right after a document opens; block outbound SMB.
- What the template does next is covered by T1204.002 (Office spawning shells).
