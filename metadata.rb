name             'mysql_virtual_host'
maintainer       'Thomas Uebel'
maintainer_email 'thomas@thomasuebel.de'
license          'http://creativecommons.org/licenses/by/4.0/'
description      'Installs/Configures virtual mysql host'
long_description 'Installs/Configures virtual mysql host'
version          '0.0.3'

supports         'centos'

recipe			 'mysql_virtual_host::default', 'Empty'
recipe			 'mysql_virtual_host::install_mysql', 'Installs and creates the mysql instance'

depends			 'mysql', '~> 6.0'
