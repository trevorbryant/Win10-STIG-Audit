## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63343"
$GroupTitle = "WN10-00-000025"
$RuleID = "SV-77833r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000025"
$RuleTitle = "The operating system must employ automated mechanisms to determine the state of system components with regard to flaw remediation using the following frequency: continuously, where HBSS is used; 30 days, for any additional internal network scans not covered by HBSS; and annually, for external scans by Computer Network Defense Service Provider (CNDSP)."
$CCI = "CCI-001233"

$ServiceName = "AgentName"
$ServiceStatus = (Get-Service -Name $ServiceName -ErrorAction SilentlyContinue).Status

If ($ServiceStatus -Eq $True)
    {
        $Configuration = "$ServiceName is $ServiceStatus"
    } Else {
        $Configuration = "$ServiceName is not installed"
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