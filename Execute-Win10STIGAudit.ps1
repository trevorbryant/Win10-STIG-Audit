## Windows 10 STIG Compliance Audit
## Created by Trevor Bryant

$CATDir = "CAT_I", "CAT_II", "CAT_III"
$Export = "\\VBOXSVR\share\results.csv"

# Add logic to identify accurate working directory
(Get-ChildItem $CATDir).FullName | ForEach { & $_ } | Export-CSV -NoTypeInformation $Export