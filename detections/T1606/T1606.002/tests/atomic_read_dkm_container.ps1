# Test for T1606.002 (4662) - read the thumbnailPhoto attribute of the AD FS DKM container objects.
# Needs the ActiveDirectory module, read access to the container, an AD FS lab domain and the SACL from the README.
# Run in a lab domain only.
Import-Module ActiveDirectory
$base = "CN=ADFS,CN=Microsoft,CN=Program Data,$((Get-ADDomain).DistinguishedName)"
Get-ADObject -SearchBase $base -Filter 'objectClass -eq "contact"' -Properties thumbnailPhoto |
    Select-Object Name, @{n='HasKey'; e={ [bool]$_.thumbnailPhoto }}
