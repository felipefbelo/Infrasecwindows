Comandos extremamente uteis, para realizar verificações de segurança e levantar informações do Active Directory!
Obs: Comandos realizados com usuario comum

Podemos verificar em qual Domain Controller voce esta logado:

-  C:\Users\usuario.teste>echo %logonserver%


listar todos os Usuários do domínio:

-  C:\Users\usuario.teste>net user /domain


Computadores no Domínio:

-  C:\Users\usuario.teste>wmic /NAMESPACE:\\root\directory\ldap PATH ds_computer GET ds_samaccountname


DSQUERY para listar quais sãos os servidores Domain Controllers:

-  C:\Users\usuario.teste>dsquery server


listar todos os Usuários do domínio incluindo as OUs:

-  C:\Users\usuario.teste>dsquery user


Para puxarmos todas as infos Login, Nome Completo, Telefone, E-mail, Status da Senha:

-  C:\Users\usuario.teste>dsquery user | dsget user -samid -display -tel -email -pwdneverexpires


Podemos utilizar WMIC para extrair dados de usuários como Domínio, Nome Completo, Login e Status da Conta, execute:

-  C:\Users\usuario.teste>wmic useraccount get Domain, FullName, Name, Status


Usuários Desabilitados, execute:

-  C:\Users\usuario.teste>dsquery user “dc=teste,dc=local” -disabled


Listar todos os Grupos que um determinado usuário é Membro:

-  C:\Users\usuario.teste>dsquery user -samid Administrator | dsget user -memberof | dsget group -samid


Status de todos os usuários do grupo Domain Users:

-  C:\Users\usuario.teste>dsquery group -samid “Domain Users” | dsget group -members | dsget user -disabled -samid -display
