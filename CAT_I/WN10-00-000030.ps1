## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63337"
$GroupTitle = "WN10-00-000030"
$RuleID = "SV-77827r1_rule"
$Severity = "CAT I"
$RuleVersionSTIGID = "WN10-00-000030"
$RuleTitle = "Mobile systems must encrypt all disks to protect the confidentiality and integrity of all information at rest."
$CCI = "CCI-001199", "CCI-002475", "CCI-002476"

$Configuration = "How to: Bitlocker"
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