## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63393"
$GroupTitle = "WN10-00-000130"
$RuleID = "SV-77883r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000130"
$RuleTitle = "Software certificate installation files must be removed from a system."
$CCI = "CCI-000366"

(Get-PSDrive).Root | ForEach {
        $Configuration = Get-ChildItem -Path "$_" -Include *.p12, *.pdx -Recurse -ErrorAction SilentlyContinue
}

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