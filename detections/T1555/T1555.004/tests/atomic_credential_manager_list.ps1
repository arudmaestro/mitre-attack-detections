# Test for T1555.004 - list saved credential names with vaultcmd and cmdkey (no secrets are shown).
# Run in a lab/test VM only.
vaultcmd.exe /listcreds:"Windows Credentials" /all
cmdkey.exe /list
