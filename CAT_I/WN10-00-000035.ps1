## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63345"
$GroupTitle = "WN10-00-000035"
$RuleID = "SV-77835r1_rule"
$Severity = "CAT I"
$RuleVersionSTIGID = "WN10-00-000035"
$RuleTitle = "The operating system must employ a deny-all, permit-by-exception policy to allow the execution of authorized software programs."
$CCI = "CCI-001774"

$Configuration = "How to: AppWhitelist"
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