#
# Cookbook Name:: chef-essentials-hackday-2016
# Recipe:: chrome-tlhutchings
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

chrome_source = 'https://dl-ssl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B806F36C0-CB54-4A84-A3F3-0CF8A86575E0%7D%26lang%3Den%26browser%3D3%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dfalse/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi'

windows_package 'Google Chrome' do 
   source chrome_source
   action :install
end