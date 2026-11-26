# Test for T1564.008 - harmless command line containing 'New-InboxRule -Name T1564008 -SubjectContainsWords security -DeleteMessage' (no rule is created). Run in a lab/test VM only.
cmd.exe /c echo New-InboxRule -Name T1564008 -SubjectContainsWords security -DeleteMessage T1564.008 test
