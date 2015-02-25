#
# Cookbook Name:: mysql_virtual_host
# Recipe:: install_mysql
#
# BY 2015 Thomas Uebel
#
# This work is licensed under the Creative Commons Attribution 4.0 International License. 
# To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/.

mysql_service 'default' do
  port '3306'
  version '5.7'
  initial_root_password 'mysqlvirtual'
  action [:create, :start]
end

mysql_config 'default' do
  source 'mysite.cnf.erb'
  notifies :restart, 'mysql_service[default]'
  action :create
end
