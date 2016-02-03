## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63399"
$GroupTitle = "WN10-00-000135"
$RuleID = "SV-77889r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000135"
$RuleTitle = "A host-based firewall must be installed and enabled on the system."
$CCI = "CCI-000366"

$Configuration = Get-NetFirewallRule | Select Name,Enabled | Out-String

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