## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63349"
$GroupTitle = "WN10-00-000040"
$RuleID = "SV-77839r1_rule"
$Severity = "CAT I"
$RuleVersionSTIGID = "WN10-00-000040"
$RuleTitle = "Systems must be maintained at a supported servicing level."
$CCI = "CCI-000366"

$Configuration = (gwmi Win32_OperatingSystem).BuildNumber
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