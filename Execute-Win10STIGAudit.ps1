## Windows 10 STIG Compliance Audit
## Version 1, Release 1
## Created by Trevor Bryant
## 01/19/2016

$CATDir = "CAT_I", "CAT_II", "CAT_III"
$Export = "\\VBOXSVR\share\results.csv"

# Add logic to identify accurate working directory
(Get-ChildItem $CATDir).FullName | ForEach { & $_ } | Export-CSV -NoTypeInformation $Export