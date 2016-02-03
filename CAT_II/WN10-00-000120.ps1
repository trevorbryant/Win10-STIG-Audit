## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63389"
$GroupTitle = "WN10-00-000120"
$RuleID = "SV-77879r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000120"
$RuleTitle = "The TFTP Client must not be installed on the system."
$CCI = "CCI-000382"

$Configuration = ""
If (Get-ChildItem C:\Windows\System32\tftp.exe -ErrorAction SilentlyContinue)
    {
        $Configuration = "TFTP Client is installed"
    } Else {
        $Configuration = "TFTP Client is not installed"
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