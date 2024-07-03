Import-Module ActiveDirectory
$DaysInactive = 90
$InactiveDate = (Get-Date).Adddays(-($DaysInactive))
$Users = Get-ADUser -SearchBase "OU=CONTOSO,DC=CORP,DC=XX,DC=XX,DC=br" -Filter { LastLogonDate -lt $InactiveDate -and Enabled -eq $true } -Properties LastLogonDate | Select-Object @{ Name="Username"; Expression={$_.SamAccountName} }, Name, LastLogonDate, DistinguishedName
#-------------------------------
$Users | Export-Csv C:\Temp\InactiveUsers.csv -NoTypeInformation
#echo $Users >> C:\Temp\log.txt
ForEach ($Item in $Users){
 $DistName = $Item.DistinguishedName
 Disable-ADAccount $DistName
 Set-ADUser $DistName -HomePage "Usuário Desabilitado por script 90dias"
 Get-ADUser -Filter { DistinguishedName -eq $DistName } | Select-Object @{ Name="Username"; Expression={$_.SamAccountName} }, Name, Enabled
  }
