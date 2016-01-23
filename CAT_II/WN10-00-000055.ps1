## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63355"
$GroupTitle = "WN10-00-000055"
$RuleID = "SV-77845r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000055"
$RuleTitle = "Alternate operating systems must not be permitted on the same system."
$CCI = "CCI-000366"

$Configuration = "How to: Dual Boot"
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