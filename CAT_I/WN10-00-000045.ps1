## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63351"
$GroupTitle = "WN10-00-000045"
$RuleID = "SV-77841r1_rule"
$Severity = "CAT I"
$RuleVersionSTIGID = "WN10-00-000045"
$RuleTitle = "An approved, up-to-date, DoD antivirus program must be installed and used."
$CCI = "CCI-000366"

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