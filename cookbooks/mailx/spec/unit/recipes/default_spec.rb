#
# Cookbook Name:: mailx
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'mailx::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
      expect(runner).to install_package 'mailx'
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

  end

  context 'on Debian' do
    let(:chef_run) { ChefSpec::ServerRunner.new({:platform => 'ubuntu', :version => '14.04'}).converge(described_recipe) }

    it 'should install the correct packages' do
      expect(chef_run).to install_package 'mailutils'
    end
  end

  context 'on CentOS' do
    let(:chef_run) { ChefSpec::ServerRunner.new({:platform => 'centos', :version => '6.5'}).converge(described_recipe) }

    it 'should install the correct packages' do
      expect(chef_run).to install_package 'mailx'
    end
  end
end
