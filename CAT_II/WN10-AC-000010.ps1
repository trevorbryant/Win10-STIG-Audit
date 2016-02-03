## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63409"
$GroupTitle = "WN10-AC-000010"
$RuleID = "SV-77899r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-AC-000010"
$RuleTitle = "The number of allowed bad logon attempts must be configured to 3 or less."
$CCI = "CCI-000044"

$RegPath = "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess\Parameters\AccountLockout"
$Configuration = (Get-ItemProperty $RegPath).MaxDenials

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