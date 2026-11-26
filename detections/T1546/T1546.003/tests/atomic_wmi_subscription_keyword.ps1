# Test for T1546.003 - harmless command line containing the WMI subscription class names (nothing is created).
# Run in a lab/test VM only.
cmd.exe /c echo __EventFilter CommandLineEventConsumer T1546.003 test
