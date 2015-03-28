#
# Author:: Ringo De Smet <ringo@releasequeue.com>
#
# Cookbook Name:: ci-buildtools
# Recipe:: docker
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

include_recipe 'ci-buildtools::common'

begin
  include_recipe "ci-buildtools::_docker_#{node['platform_family']}"
rescue Chef::Exceptions::RecipeNotFound
  Chef::Log.warn <<-EOH
A docker recipe does not exist for '#{node['platform_family']}'. This
means the ci-buildtools cookbook does not have support for the
#{node['platform_family']} family.
  EOH
end
