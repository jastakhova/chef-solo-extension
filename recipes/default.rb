require 'chef/config'

directory "#{Chef::Config[:node_path]}" do
  mode "0775"
  action :create
  recursive true
end

if (platform?("ubuntu") && node['platform_version'].to_i == 10)
  execute "apt-get update" do
    ignore_failure true
    action :nothing
  end

  template "/etc/apt/sources.list" do
    source "ubuntu10.sources.list.erb"
    notifies :run, resources(:execute => "apt-get update"), :immediately
    mode 0644
  end
end

