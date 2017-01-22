# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "bento/centos-6.7"
    config.vm.hostname = "mysql-box"
    config.vm.network "private_network", ip: "192.168.252.101"
    config.vm.network "forwarded_port", guest: 3306, host: 13306

    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder "./sql-files", "/var/sql-files"

    config.vm.provision "ansible" do |ansible|
        ansible.sudo = true
        ansible.extra_vars = { 
            ansible_ssh_user: 'vagrant'
        }
        ansible.playbook = "provisioning/install_mysql.yml"
    end

end
