## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63373"
$GroupTitle = "WN10-00-000095"
$RuleID = "SV-77863r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000095"
$RuleTitle = "Permissions for system files and directories must conform to minimum requirements."
$CCI = "CCI-002165"

$Configuration = ""
$DirPath = "C:\", "C:\Program Files", "C:\Windows"
$DirPath | ForEach { $Configuration += Get-ACL $_ | Select PSChildName -ExpandProperty Access | Out-String }

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