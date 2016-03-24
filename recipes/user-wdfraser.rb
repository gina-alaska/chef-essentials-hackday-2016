#
# Cookbook Name:: chef-essentials-hackday-2016
# Recipe:: user-wdfraser.rb
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

user 'wdfraser' do
  supports :manage_home => true
  comment 'W. Duncan Fraser'
  password 'Test123'
  action :create
end

group 'Administrators' do
  members ['wdfraser']
  append true
  action :modify
end
