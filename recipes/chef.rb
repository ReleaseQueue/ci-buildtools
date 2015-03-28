#
# Author:: Ringo De Smet <ringo@releasequeue.com>
#
# Cookbook Name:: ci-buildtools
# Recipe:: chef
#
# Copyright 2015, ReleaseQueue
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'ci-buildtools::cpp'

# Install the knife container plugin
gem_package 'knife-container' do
  gem_binary "#{RbConfig::CONFIG['bindir']}/gem"
  action :install
end

# Install the Test-Kitchen EC2 provider
gem_package 'kitchen-ec2' do
  gem_binary "#{RbConfig::CONFIG['bindir']}/gem"
  action :install
end

# Install the Test-Kitchen Docker provider
gem_package 'kitchen-docker' do
  gem_binary "#{RbConfig::CONFIG['bindir']}/gem"
  action :install
end

kitchen_chef_container = 'kitchen-chef-container'
kitchen_chef_container_version = '0.0.1'
kitchen_chef_container_gem = "#{kitchen_chef_container}-#{kitchen_chef_container_version}.gem"

# Download the Test-Kitchen Chef-Container provider
remote_file "#{Chef::Config[:file_cache_path]}/#{kitchen_chef_container_gem}" do
  source "http://assets.automate-dev.be/development/ruby/gems/#{kitchen_chef_container_gem}"
  action :create
end

# Install the Test-Kitchen Chef-Container provider
gem_package kitchen_chef_container do
  source "#{Chef::Config[:file_cache_path]}/#{kitchen_chef_container_gem}"
  gem_binary "#{RbConfig::CONFIG['bindir']}/gem"
  action :install
  # Repeat the version here due to https://github.com/opscode/chef/pull/916
  version kitchen_chef_container_version
end

begin
  include_recipe "ci-buildtools::_chef_#{node['platform_family']}"
rescue Chef::Exceptions::RecipeNotFound
  Chef::Log.warn <<-EOH
A chef recipe does not exist for '#{node['platform_family']}'. This
means the ci-buildtools cookbook does not have support for the
#{node['platform_family']} family.
  EOH
end
