#
# Cookbook:: artifactory
# Recipe:: windows
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_file 'C:/jfrog-artifactory-oss-5.5.1.zip' do
  source 'https://api.bintray.com/content/jfrog/artifactory/jfrog-artifactory-oss-$latest.zip;bt_package=jfrog-artifactory-oss-zip'
  owner 'Administrator'
  group 'Administrator'
  mode '0777'
  action :create
end

dsc_resource 'unzip' do
   resource :archive
   property :ensure, 'Present'
   property :path, 'C:/jfrog-artifactory-oss-5.5.1.zip'
   property :destination, 'C:\\'
 end

batch 'install_script' do
	cwd 'C:\\artifactory-oss-5.5.1\\bin\\'
	code "installService.bat"
	action :run
end

batch 'run_script' do
  cwd 'C:\\artifactory-oss-5.5.1\\tomcat\\bin\\'
  code "startup.bat"
  action :run
end
