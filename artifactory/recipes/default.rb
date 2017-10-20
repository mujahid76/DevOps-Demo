#
# Cookbook:: Artifactory
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


# include_recipe 'java'  

if node['platform'] == 'windows'
 include_recipe 'artifactory::windows'
else
 include_recipe 'artifactory::ubuntu'  
end
