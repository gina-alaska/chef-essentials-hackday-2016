#
# Cookbook Name:: chef-essentials-hackday-2016
# Recipe:: user-sutekidayo
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

user 'sutekidayo' do
  action :create
  password 'ChangeMe!'
end

group "Administrators" do
  action :modify
  members "sutekidayo"
  append true
end
