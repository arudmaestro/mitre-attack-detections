# Test for T1056.002 (Windows) - show a credential prompt; press Cancel. Run in a lab/test VM only.
powershell.exe -NoProfile -Command "`$null = `$host.UI.PromptForCredential('T1056.002 test', 'Press Cancel', '', '')"
