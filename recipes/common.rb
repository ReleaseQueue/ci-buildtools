#
# Author:: Ringo De Smet <ringo@releasequeue.com>
#
# Cookbook Name:: ci-buildtools
# Recipe:: common
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

# Set home_basedir based on platform_family
case node['platform_family']
when 'mac_os_x'
  home_basedir = '/Users'
when 'debian', 'rhel', 'fedora', 'arch', 'suse', 'freebsd'
  home_basedir = '/home'
end

node['ci-buildtools']['developers'].each do |developer|
  user developer do
    supports :manage_home => true # rubocop:disable Style/HashSyntax, UseHashRocketsWithSymbolValues/true
    home "#{home_basedir}/#{developer}"
    shell '/bin/bash'
    action :create
  end
end

begin
  include_recipe "ci-buildtools::_common_#{node['platform_family']}"
rescue Chef::Exceptions::RecipeNotFound
  Chef::Log.warn <<-EOH
A build-essential recipe does not exist for '#{node['platform_family']}'. This
means the ci-buildtools cookbook does not have support for the
#{node['platform_family']} family.
  EOH
end
