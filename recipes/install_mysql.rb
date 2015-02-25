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
  initial_root_password '#{node["db"]["initialrootpw"]}'
  action [:create, :start]
end

node['db']['schemas'].each do |schema|
  sql = "CREATE SCHEMA #{schema} CHARACTER SET utf8; \
       GRANT ALL PRIVILEGES ON #{schema}.* TO '#{schema}'@'localhost' IDENTIFIED BY '#{schema}'; \
       GRANT ALL PRIVILEGES ON #{schema}.* TO '#{schema}'@'%' IDENTIFIED BY '#{schema}';"
  execute "create #{schema} schema" do
    command "mysql --user=root --password=#{node["db"]["initialrootpw"]} --execute=\"#{sql}\""
    not_if "mysql --user=#{schema} --password=#{schema} --execute='' #{schema}"
  end
end