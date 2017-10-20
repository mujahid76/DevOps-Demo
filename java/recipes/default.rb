#
# Cookbook:: java
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'java::install' unless ::File.exist?('/usr/bin/java')