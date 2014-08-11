#
# Author:: Ringo De Smet <ringo@automate-dev.com>
#
# Cookbook Name:: ad-buildtools
# Recipe:: common
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

if platform_family?('debian')
  include_recipe 'ad-buildtools::_common_debian'
end

if platform_family?('mac_os_x')
  include_recipe 'ad-buildtools::_common_mac_os_x'
end

# Install common packages
# node['ad-buildtools']['common']['packages'].each do |pkg|
#   package pkg do
#     action :install
#   end
# end
