Bypass do ExecutionPolicy:
Existem algumas formas para bypassar restrição:
Set-ExecutionPolicy Bypass –Force (admin - sem perguntas)
Colar o Script dentro do próprio shell – Ctrl+C & Ctrl+V
Dar um echo do script dentro de um PowerShell utilizando o pipeline:
Ler o script de um arquivo e passar por pipe para o execução:
Usar o Command ou EncodedCommand. (mais a frente)
Usando o Invoke-Command e passando os comandos a serem executados:
- Parâmetros
- C:\ Echo 'Write-Host "Bypass de restricao"; Get-Host;' | powershell -noprofile -
- C:\ Get-Content .\script.ps1 | powershell -noprofile -
- C:\ Invoke-Command –ScriptBlock {Write-Host “Bypass de restrição”; Get-Host}


- Bypass do ExecutionPolicy:
($bpexec=$executioncontext.gettype().getfield("_context","no
npublic,instance").getvalue($executioncontext)).gettype().get
field("_authorizationManager","nonpublic,instance").setvalue($
bpexec, (new-object
System.Management.Automation.AuthorizationManager
"Microsoft.PowerShell"))´

PortScan:
1..1024 | % {echo ((new-object Net.Sockets.TcpClient).Connect(“IP”,$_))
“Port $_ is open” } 2>$null $ports=1..1024;$ip=“ip”;foreach($port in $ports) {try{$socket= New-
Object System.Net.Sockets.TcpClient($ip,$port);} catch{}; if($socket –ne
$null) {echo $ip“:”$port“ – Open”; $socket=null;}else{echo $ip“:”$port“
– Close”;}}
