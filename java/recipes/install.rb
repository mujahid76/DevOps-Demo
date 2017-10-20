#
# Cookbook:: java
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.


apt_repository 'ppa_webupd8team_java' do
  uri          'ppa:webupd8team/java'
end

execute 'Java | Accept the Oracle license before the installation' do
  command "echo oracle-java#{node['java_version']}-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections"
end

apt_package 'Java | Install' do
  package_name  "oracle-java#{node['java_version']}-installer"
  action        :upgrade
end 