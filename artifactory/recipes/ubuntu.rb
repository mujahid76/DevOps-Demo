#
# Cookbook:: artifactory
# Recipe:: ubuntu
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_file '/var/tmp/jfrog-artifactory-oss-5.5.1.zip' do
  source 'https://api.bintray.com/content/jfrog/artifactory/jfrog-artifactory-oss-$latest.zip;bt_package=jfrog-artifactory-oss-zip'
  #source 'https://sourceforge.net/projects/artifactory/files/artifactory/3.9.2/artifactory-3.9.2.zip'
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

package 'unzip'

bash 'unzip installation' do
	code <<-EOF
	unzip -o '/var/tmp/jfrog-artifactory-oss-5.5.1.zip' -d /opt/   
	
  EOF
end


execute 'install_script' do
	command 'sudo /opt/artifactory-oss-5.5.1/bin/installService.sh'
	action :run
end	

# Start and enable artifactory service

service "artifactory" do
	action [:enable, :start]
end
