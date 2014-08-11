#
# Author:: Ringo De Smet <ringo@automate-dev.com>
#
# Cookbook Name:: ad-buildtools
# Recipe:: _ruby_debian
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

include_recipe 'rvm::system_install'

# add users to rvm group
group 'rvm' do
  members node['rvm']['group_users']

  only_if { node['rvm']['group_users'].any? }
end

# Install binary rubies to shorten installation times.
node['rvm']['rubies'].each do |ruby|
  command = "rvm install #{ruby} --binary"
  rvm_shell command do
    code command
    action :run
  end
end
