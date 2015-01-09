return if node['platform'] == 'windows'

# Yes, a require in an attributes file. This gives us
# the Syslog constants like Syslog::LOG_DAEMON, etc
require 'syslog'

default['chef_client']['handler']['syslog']['identity'] = 'chef'
default['chef_client']['handler']['syslog']['facility'] = Syslog::LOG_DAEMON
default['chef_client']['handler']['syslog']['fail_priority'] = Syslog::LOG_ERR
default['chef_client']['handler']['syslog']['success_priority'] = Syslog::LOG_INFO
