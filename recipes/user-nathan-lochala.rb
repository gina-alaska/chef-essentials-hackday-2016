#
# Cookbook Name:: chef-essentials-hackday-2016
# Recipe:: user-nathan.lochala
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

user 'nathan-lochala' do
  supports :manage_home => true
  comment 'Nathan Lochala'
end
