## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63365"
$GroupTitle = "WN10-00-000080"
$RuleID = "SV-77855r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000080"
$RuleTitle = "Users must not be allowed to run virtual machines in Hyper-V on the system."
$CCI = "CCI-000381"

$Configuration = ""
If (Get-Command -Name Get-LocalGroupMember -Eq $True)
    {
        $Configuration += Get-LocalGroupMember "Hyper-V Administrators"
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