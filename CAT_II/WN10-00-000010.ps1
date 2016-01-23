## Windows 10 STIG Compliance Audit
## Version 1, Release 1
## Created by Trevor Bryant
## 01/19/2016

$GroupID = "V-63323"
$GroupTitle = "WN10-00-000010"
$RuleID = "SV-77813r1_rule"
$Severity = "CAT II"
$RuleVersionSTIGID = "WN10-00-000010"
$RuleTitle = "Domain-joined systems must have a Trusted Platform Module (TPM) enabled and ready for use."
$CCI = "CCI-000366"

$RegValue = "HKLM:\SOFTWARE\Policies\Microsoft\TPM\OSManagedAuthLevel"
If (Test-Path $RegValue)
    { 
        $Configuration = Get-ItemProperty $RegValue
    } Else {
        $Configuration = $Null
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