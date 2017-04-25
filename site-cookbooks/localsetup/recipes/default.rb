#
# Cookbook Name:: localsetup
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'user1' do
  comment  ''
  shell    '/bin/bash'
  password 'user1'
  manage_home true
  action   [:create, :manage]
end
user 'user2' do
  comment  ''
  shell    '/bin/bash'
  password 'user2'
  manage_home true
  action   [:create, :manage]
end
