# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.berkshelf.enabled = true
    config.omnibus.chef_version = "11.6"

    config.vm.box = "chef/centos-6.5"
    config.vm.hostname = "mysql-box"
    config.vm.network "private_network", ip: "192.168.252.101"
    config.vm.network "forwarded_port", guest: 3306, host: 13306

    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder "./sql-files", "/var/sql-files"

    config.vm.provision "chef_solo" do |chef|
        chef.log_level = :warn
        chef.add_recipe "mysql_virtual_host::install_mysql"
    end

end
