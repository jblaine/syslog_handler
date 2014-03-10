include_recipe 'chef_handler'

cookbook_file "#{Chef::Config[:file_cache_path]}/chef-handler-syslog.rb" do
  source 'chef-handler-syslog.rb'
  mode 0600
end.run_action(:create)

chef_handler 'SyslogReporting' do
  source "#{Chef::Config[:file_cache_path]}/chef-handler-syslog.rb"
  arguments [
              :identity         => node['chef_client']['handler']['syslog']['identity'],
              :facility         => node['chef_client']['handler']['syslog']['facility'],
              :fail_priority    => node['chef_client']['handler']['syslog']['fail_priority'],
              :success_priority => node['chef_client']['handler']['syslog']['success_priority'],
            ]
  supports :report => true, :exception => true
  action :nothing
end.run_action(:enable)
