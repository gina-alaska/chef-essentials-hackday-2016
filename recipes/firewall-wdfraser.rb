#
# Cookbook Name:: chef-essentials-hackday-2016
# Recipe:: firewall-wdfraser
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

windows_firewall_rule 'IIS HTTP' do
  localport '80'
  protocol 'TCP'
  firewall_action :allow
end

windows_firewall_rule 'IIS HTTPS' do
  localport '443'
  protocol 'TCP'
  firewall_action :allow
end

windows_firewall_rule 'RDP TCP' do
  localport '3389'
  protocol 'TCP'
  firewall_action :allow
end

windows_firewall_rule 'RDP UDP' do
  localport '3389'
  protocol 'UDP'
  firewall_action :allow
end

windows_firewall_rule 'WinRM HTTP' do
  localport '5985'
  protocol 'TCP'
  firewall_action :allow
end

powershell_script 'enable-firewall' do
  code <<-EOH
  Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
  EOH
end
