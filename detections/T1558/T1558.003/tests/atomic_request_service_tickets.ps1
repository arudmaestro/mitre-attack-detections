# Test for T1558.003 - request Kerberos service tickets for the given SPNs (4769 on the DC).
# Use 5 or more SPNs of lab user service accounts with RC4 enabled to trigger the threshold rule.
# Usage: .\atomic_request_service_tickets.ps1 -Spn 'HTTP/web1.lab.local','MSSQLSvc/sql1.lab.local:1433',...
# Run on a domain-joined lab machine only. Tickets stay in the current logon session (klist purge removes them).
param([Parameter(Mandatory = $true)][string[]]$Spn)
Add-Type -AssemblyName System.IdentityModel
foreach ($s in $Spn) {
    try { New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList $s | Out-Null; "requested $s" }
    catch { "failed $s : $($_.Exception.Message)" }
}
klist.exe purge | Out-Null
