# Tests - T1114.002

Emulation only. Run in a lab/test system.

## Atomic Red Team
```powershell
Invoke-AtomicTest T1114.002 -ShowDetails
```

## Script
- [atomic_mailbox_export_keyword.ps1](atomic_mailbox_export_keyword.ps1)

The script only simulates the command line. On a lab Exchange server, run `New-MailboxExportRequest` against a test mailbox for a full test.
