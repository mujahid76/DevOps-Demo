#
# Cookbook:: artifactory
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'artifactory::windows' do
  context 'When all attributes are default, on an Windows Server 2016' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2')
      runner.converge(described_recipe)
    end

    
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'downloads zip' do
      expect(chef_run).to create_remote_file('C:/jfrog-artifactory-oss-5.5.1.zip')
    end

    
    it "run artifactory" do
     expect(chef_run).to run_batch('install_script').with_cwd('C:\\artifactory-oss-5.5.1\\bin\\')
     expect(chef_run).to run_batch('run_script').with_cwd('C:\\artifactory-oss-5.5.1\\tomcat\\bin\\')
    end     
  end
end
