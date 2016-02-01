## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63381"
$GroupTitle = "WN10-00-000105"
$RuleID = "SV-77871r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000105"
$RuleTitle = "Simple Network Management Protocol (SNMP) must not be installed on the system."
$CCI = "CCI-000382"

$SNMP = "SNMP Service"
$Configuration = ""
If (Get-Process $SNMP -ErrorAction SilentlyContinue)
    {
        $Configuration = "$SNMP present"
    } Else {
        $Configuration = "$SNMP is not present"
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