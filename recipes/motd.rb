#
# Cookbook:: chef-workstation
# Recipe:: motd
#
# Copyright:: 2019, The Authors, All Rights Reserved.

template '/etc/motd' do
    source 'motd.erb'
    variables(
        :ipaddress => node['ipaddress'], 
        :totalmemory => node['memory']['total'],
        :companyName => node['company']['name'],
        :slogan      => node['company']['slogan'] 
    )
end