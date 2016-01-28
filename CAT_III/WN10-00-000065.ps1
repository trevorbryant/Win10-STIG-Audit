## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$GroupID = "V-63359"
$GroupTitle = "WN10-00-000065"
$RuleID = "SV-77849r1_rule"
$Severity = "CAT III"
$RuleVersionSTIGID = "WN10-00-000065"
$RuleTitle = "Unused accounts must be disabled or removed from the system after 35 days of inactivity."
$CCI = "CCI-000795"

$Users = ([ADSI]('WinNT://{0}' -f $env:COMPUTERNAME)).Children | Where-Object { $_.SchemaClassName -eq 'user' }
$Users | ForEach {
    $User = ([ADSI]$_.Path)
    $UserName = $User.Name
    $LastLogin = $User.Properties.LastLogin.Value
    $Enabled = ($User.Properties.UserFlags.Value -band 0x2) -ne 0x2
    If ($LastLogin -eq $null)
        {
            $LastLogin = "Never"
    } $Configuration += "$UserName,$LastLogin,$Enabled"
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