#
# Author:: Ringo De Smet <ringo@automate-dev.com>
#
# Cookbook Name:: ad-buildtools
# Recipe:: cpp
#
# Copyright 2014, Automate.Dev
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

include_recipe 'ad-buildtools::common'

include_recipe 'build-essential'

begin
  include_recipe "ad-buildtools::_cpp_#{node['platform_family']}"
rescue Chef::Exceptions::RecipeNotFound
  Chef::Log.warn <<-EOH
A build-essential recipe does not exist for '#{node['platform_family']}'. This
means the ad-buildtools cookbook does not have support for the
#{node['platform_family']} family.
  EOH
end