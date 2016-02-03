## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63403"
$GroupTitle = "WN10-00-000140"
$RuleID = "SV-77893r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000140"
$RuleTitle = "Inbound exceptions to the firewall on domain workstations must only allow authorized remote management hosts."
$CCI = "CCI-000366"

$Configuration = Get-NetFirewallRule -Direction Inbound | Select Name,Enabled | Out-String

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