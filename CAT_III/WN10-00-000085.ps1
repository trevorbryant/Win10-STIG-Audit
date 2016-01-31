## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63367"
$GroupTitle = "WN10-00-000085"
$RuleID = "SV-77857r1_rule"
$Severity = "CAT III"
$RuleVersionSTIGID = "WN10-00-000085"
$RuleTitle = "Standard local user accounts must not exist on a system in a domain."
$CCI = "CCI-000366"

$Configuration = ""
If (Get-Command -Name Get-LocalGroupMember -Eq $True)
    {
        $Configuration = (Get-LocalUser).Name | Out-String
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