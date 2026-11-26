# T1204.001 - User Execution: Malicious Link

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1204/001/
- **Platforms:** Linux, macOS, Windows

## Summary
An adversary may rely upon a user clicking a malicious link in order to gain execution.

## Status: guidance only
Clicking a malicious link happens in the mail client and browser; the click itself is not an endpoint event.

## How to detect it
- Email security / Safe Links click logs (Defender for Office 365 UrlClickEvents): clicks on links later rated malicious.
- Web proxy: visits to newly registered or uncategorised domains shortly after an email is delivered.
- What follows the click is covered by T1204.002 and T1189 detections.
