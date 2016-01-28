## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63361"
$GroupTitle = "WN10-00-000070"
$RuleID = "SV-77851r1_rule"
$Severity = "CAT I"
$RuleVersionSTIGID = "WN10-00-000070"
$RuleTitle = "Only accounts responsible for the administration of a system must have Administrator rights on the system."
$CCI = "CCI-002235"

If (Get-Command -Name Get-LocalGroupMember -Eq $True)
    {
        $Configuration += Get-LocalGroupMember Administrators
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
$Audit | Add-Member -MemberType NoteProperty -Name Configuration -Value $Configuration.ToString
$Audit