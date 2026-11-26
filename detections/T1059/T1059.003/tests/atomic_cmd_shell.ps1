# Test for T1059.003 - Windows Command Shell. Run in a lab/test VM only.
# This validates cmd.exe process telemetry. To fire the full Office-parent rule,
# run the same command from an Office macro (see the Atomic Red Team T1059.003 / macro tests).
cmd.exe /c "echo T1059.003 test & whoami"
