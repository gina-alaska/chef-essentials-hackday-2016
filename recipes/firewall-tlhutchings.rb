#
# Cookbook Name:: chef-essentials-hackday-2016
# Recipe:: firewall-tlhutchings
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

windows_firewall_rule 'RDP' do
   localport '31143'
   protocol 'TCP'
   profile :public
   firewall_action :allow
end
