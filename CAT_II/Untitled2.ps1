## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant
## 

$GroupID = "V-63327"
$GroupTitle = "WN10-00-000015"
$RuleID = "SV-77817r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000015"
$RuleTitle = "System firmware or system controllers must have administrator accounts/passwords configured."

$OSver = (gwmi Win32_OperatingSystem).Caption
$Audit = New-Object -TypeName System.Object
$Audit | Add-Member -MemberType NoteProperty -Name GroupID -Value $GroupID
$Audit | Add-Member -MemberType NoteProperty -Name GroupTitle -Value $GroupTitle
$Audit | Add-Member -MemberType NoteProperty -Name RuleID -Value $RuleID
$Audit | Add-Member -MemberType NoteProperty -Name Severity -Value $Severity
$Audit | Add-Member -MemberType NoteProperty -Name RuleVersionSTIGID -Value $RuleVersionSTIGID
$Audit | Add-Member -MemberType NoteProperty -Name RuleTitle -Value $RuleTitle
$Audit | Add-Member -MemberType NoteProperty -Name Configuration -Value $OSver
$Audit