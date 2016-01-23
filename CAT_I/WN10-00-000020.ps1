## Windows 10 STIG Compliance Audit
## Version 1, Release 1
## Created by Trevor Bryant
## 01/19/2016

$GroupID = "V-63331"
$GroupTitle = "WN10-00-000020"
$RuleID = "SV-77821r1_rule"
$Severity = "CAT I"
$RuleVersionSTIGID = "WN10-00-000020"
$RuleTitle = "The system must not use removable media as the boot loader."
$CCI = "CCI-000366"

$Configuration = ""
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