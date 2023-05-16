# Desativar serviço de Telnet
sc config Telnet start= disabled

# Desativar serviço de FTP
sc config FTP start= disabled

# Desativar serviço de SMBv1
sc config lanmanworkstation start= disabled
sc config lanmanserver start= disabled

# Desativar serviço de Serviços de Área de Trabalho Remota
sc config TermService start= disabled
