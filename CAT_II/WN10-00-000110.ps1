## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63383"
$GroupTitle = "WN10-00-000110"
$RuleID = "SV-77873r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000110"
$RuleTitle = "Simple TCP/IP Services must not be installed on the system."
$CCI = "CCI-000381"

$Configuration = ""
If ((Get-Service).DisplayName -Eq "Simple TCP/IP Services")
    {
        $Configuration = "Simple TCP/IP Services is installed"
    } Else {
        $Configuration = "Simple TCP/IP Services is not installed"
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