#
# Cookbook Name:: chef-essentials-hackday-2016
# Recipe:: user-karmix
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

user 'karmix' do
  comment 'This is my account'
  password 'If you forget your password, just read the cookbook.'
end
