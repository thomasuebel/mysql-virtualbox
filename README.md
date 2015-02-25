# mysql_virtual_host

Provision a virtual box using vagrant/chef-solo.

### Following spices included

- CentOS 6.5
- MySQL

### Requirements

- ChefDK (https://downloads.getchef.com/chef-dk/)
- VirtualBox (https://www.virtualbox.org/)
- Vagrant (https://www.vagrantup.com/)

### Getting ready

#### Prerequisites

- Get ChefDK, follow the instructions with url above.
- Get VirtualBox (Strange errors may appear with a different version)
- Get Vagrant (>1.6.0)

#### Cooking the meal	

- Clone the git repository

- Install the omnibus plugin using
	
	$ vagrant plugin install vagrant-omnibus

- Install the vagrant-berkshelf plugin using
   	
   	$ vagrant plugin install vagrant-berkshelf

- Install the search cookbook and the required dependencies:
	
	$ berks install

- Start the provisioning
	
	$ vagrant up

After provisioning:

The MYSQL host is "mysql-box". The port 3306 is forwarded. 
For example you can connect your application with the jdbc string
 
 
SSH into the Vagrant box using vagrant/vagrant credentials (d'oh)

