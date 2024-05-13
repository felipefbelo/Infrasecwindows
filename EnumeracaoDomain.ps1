Identificando o domínio local:
• Get-NetDomain
• Get-ADDomain

É possível também enumerar algum outro domínio:
• Get-NetDomain –Domain <outro_domínio>
• Get-ADDomain –Identity <outro_domínio>

Identificar o SID do domínio:
• Get-DomainSID
• (Get-ADDomain).DomainSID

Identificar as informações do Domain Controller:
• Get-DomainController [-Domain <outro_domínio>]
• Get-ADDomainController [-DomainName <outro_dominio>]

Identificando a política de domínio local:
• Get-DomainPolic
Expandindo a política de Acesso de Sistema:
• (Get-DomainPolicy).SystemAccess

Expandindo a política de Tickets do Kerberos:
• (Get-DomainPolicy).KerberosPolicy

Listando todos usuários no domínio:
• Get-NetUser [(-Domain <outro_domínio>) | select name]
• Get-ADUser –Filter * -Properties * [-Server <outro_dominio>]

Verificar informações de um Usuário específico:
• Get-NetUser –Identity <nome_do_usuário>
• Get-ADUser –Identity <nome_do_usuário>

Listando todas as propriedades e métodos dos usuários:
• Get-NetUser | Get-Member
• Get-ADUser -Filter * -Properties * | Get-Member -MemberType *Property | select name
