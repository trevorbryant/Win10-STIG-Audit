## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63395"
$GroupTitle = "WN10-00-000125"
$RuleID = "SV-77885r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000125"
$RuleTitle = "The HBSS McAfee Agent must be installed."
$CCI = "CCI-000366"

$Configuration = ""
If (Get-Service masvc -ErrorAction SilentlyContinue)
    {
        $Configuration = "McAfee Agent Service is present"
    } Else {
        $Configuration = "McAfee Agent Service is not present"
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