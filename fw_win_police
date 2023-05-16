# Ativar o Firewall do Windows
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

# Criar regras de firewall para permitir tráfego essencial
New-NetFirewallRule -DisplayName "Allow ICMPv4-In" -Protocol ICMPv4
New-NetFirewallRule -DisplayName "Allow ICMPv6-In" -Protocol ICMPv6
New-NetFirewallRule -DisplayName "Allow DNS-In" -Protocol UDP -LocalPort 53
New-NetFirewallRule -DisplayName "Allow DNS-Out" -Protocol UDP -RemotePort 53
