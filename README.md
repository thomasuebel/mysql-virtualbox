# mysql_virtual_host

Provision a virtual box using Vagrant/Ansible.

### Following spices included

- CentOS 6.5
- MySQL

### Requirements

- VirtualBox (https://www.virtualbox.org/)
- Vagrant (https://www.vagrantup.com/)
- Ansible

### Getting ready

- Get VirtualBox (Strange errors may appear with a different version)
- Get Vagrant (>1.6.0)
- Install Ansible (http://docs.ansible.com/intro_installation.html)

- Clone the git repository

- Install the omnibus plugin using
	
		$ vagrant plugin install vagrant-omnibus

- Start the provisioning
	
		$ vagrant up

After provisioning:

The MYSQL host is "mysql-box". The port 3306 is forwarded. 
For example you can connect your application with the jdbc string
 
 
SSH into the Vagrant box using vagrant/vagrant credentials (d'oh)

