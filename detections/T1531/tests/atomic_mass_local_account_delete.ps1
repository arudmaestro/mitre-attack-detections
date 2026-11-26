# Test for T1531 - create and delete 6 disabled local test accounts (6 x 4726). Run in an elevated PowerShell in a lab/test VM only.
1..6 | ForEach-Object {
    $n = "T1531_test$_"
    New-LocalUser -Name $n -NoPassword -Description 'T1531 test' | Out-Null
    Remove-LocalUser -Name $n
}
