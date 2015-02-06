#
# Cookbook Name:: mailx
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
package node['mailutils']['mailx-package'] do
  action :install
end
