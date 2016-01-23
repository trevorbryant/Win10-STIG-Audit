## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63353"
$GroupTitle = "WN10-00-000050"
$RuleID = "SV-77843r1_rule"
$Severity = "CAT I"
$RuleVersionSTIGID = "WN10-00-000050"
$RuleTitle = "Local volumes must be formatted using NTFS."
$CCI = "CCI-000213"

$Configuration = gwmi Win32_LogicalDisk | Where-Object { $_.DriveType -Eq 3 } | Select DeviceID,FileSystem | Out-String
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