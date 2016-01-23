## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63357"
$GroupTitle = "WN10-00-000060"
$RuleID = "SV-77847r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000060"
$RuleTitle = "Non system-created file shares on a system must limit access to groups that require it."
$CCI = "CCI-001090"

$Configuration = (gwmi Win32_Share | Select Name,Path) | Out-String
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