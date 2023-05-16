# Configurar políticas de segurança local
secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose

# Desativar contas de convidado
net user guest /active:no

# Desativar a execução de scripts do Windows PowerShell não assinados
Set-ExecutionPolicy Restricted

# Forçar complexidade de senha
$secpasswd = ConvertTo-SecureString -String "Password123" -AsPlainText -Force
Set-LocalUser -Name Administrator -Password $secpasswd
