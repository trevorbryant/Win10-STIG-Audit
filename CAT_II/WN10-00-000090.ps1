## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63371"
$GroupTitle = "WN10-00-000090"
$RuleID = "SV-77861r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000090"
$RuleTitle = "Accounts must be configured to require password expiration."
$CCI = "CCI-000199"

$Configuration = ""
If (Get-Command -Name Get-LocalGroupMember -Eq $True)
    {
        $Configuration = Get-LocalUser | Select Name,PasswordExpired | Out-String
    } Else {
        $Configuration = "Module LocalAccount is not installed"
}

$Audit = New-Object -TypeName System.Object
$Audit | Add-Member -MemberType NoteProperty -Name GroupID -Value $GroupID
$Audit | Add-Member -MemberType NoteProperty -Name GroupTitle -Value $GroupTitle
$Audit | Add-Member -MemberType NoteProperty -Name RuleID -Value $RuleID
$Audit | Add-Member -MemberType NoteProperty -Name Severity -Value $Severity
$Audit | Add-Member -MemberType NoteProperty -Name RuleVersionSTIGID -Value $RuleVersionSTIGID
$Audit | Add-Member -MemberType NoteProperty -Name RuleTitle -Value $RuleTitle
$Audit | Add-Member -MemberType NoteProperty -Name CCI -Value $CCI
$Audit | Add-Member -MemberType NoteProperty -Name Configuration -Value $Configuration
$Audit