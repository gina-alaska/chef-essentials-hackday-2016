#
# Cookbook Name:: chef-essentials-hackday-2016
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

%w{ user-csgray user-dayne user-grimm user-karmix user-nathan-lochala user-pete user-sutekidayo user-tlhutchings user-wdfraser }.each do |u|
  include_recipe "chef-essentials-hackday-2016::#{u}"
end

include_recipe 'chef-essentials-hackday-2016::ohai-ec2'
include_recipe 'chef-essentials-hackday-2016::chrome-karmix'
