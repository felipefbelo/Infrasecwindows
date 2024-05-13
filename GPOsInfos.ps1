Script em powershell que lista todas as GPOs ativas


$reportFile = "c:\AllSettingsNabledGpos.csv"
Set-Content -Path $reportFile -Value ("GPO Name,Settings")
Get-GPO -All | where{ $_.GpoStatus -eq "AllSettingsEnabled" } | % {
    add-Content -Path $reportFile -Value ($_.displayName+","+$_.gpoStatus)
}


Listar todas as GPO do domínio:
• Get-NetGPO
• Get-NetGPO –ComputerName <nome>
• Get-GPO –All
• Get-GPResultantSetOfPolicy –ReportType HTML –Path C:\arquivo.html

Listar usuários que estão no grupo local de uma determinadamáquina, listado na política de grupo**:
• Find-GPOComputerAdmin –ComputerName <nome>

Listar todas as unidades organizacionais do domínio:
• Get-NetOU
• Get-ADOganizationalUnit –Filter * -Properties *

Listar todas as GPOs aplicadas a uma OU específica. Primeiro precisamos do valor do atributo ‘gplink’ proveniente do Get-NetOU:
• Get-NetGPO –Identity “{6AC1786C-016F-11D2-945F-00C04fB984F9}”
• Get-Gpo –Guid 6AC1786C-016F-11D2-945F-00C04fB984F9
