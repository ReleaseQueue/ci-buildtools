#
# Author:: Ringo De Smet <ringo@releasequeue.com>
#
# Cookbook Name:: ci-buildtools
# Recipe:: elixir
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

begin
  include_recipe "ci-buildtools::_elixir_#{node['platform_family']}"
rescue Chef::Exceptions::RecipeNotFound
  Chef::Log.warn <<-EOH
An elixir recipe does not exist for '#{node['platform_family']}'. This
means the ci-buildtools cookbook does not have support for the
#{node['platform_family']} family.
  EOH
end

# Rebar is an Erlang BEAM application so it runs on any platform that has Erlang installed.
remote_file '/usr/local/rebar' do
  source 'https://raw.github.com/wiki/rebar/rebar/rebar'
  action :create
  mode 0755
end

# Mix tasks can be installed globally when the MIX_ARCHIVES env variable is set
directory '/usr/local/mix/archives' do
  action :create
  recursive true
  mode 0755
end

remote_file '/usr/local/mix/archives/hex.ez' do
  source 'https://hex.pm/installs/hex.ez?elixir=1.0.2'
  mode 0644
end

cookbook_file '/etc/profile.d/mix_archives.sh' do
  source 'mix_archives.sh'
  mode 0644
end
