name             'syslog_handler'
maintainer       'Jeff Blaine'
maintainer_email 'jblaine@kickflop.net'
license          'MIT'
description      'Installs/Configures syslog_handler'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.8'

depends "chef_handler"

supports "redhat"
supports "centos"
supports "fedora"
supports "freebsd"
supports "openbsd"
supports "amazon"
supports "ubuntu"
supports "debian"
supports "solaris2"
