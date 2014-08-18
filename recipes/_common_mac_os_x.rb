#
# Author:: Ringo De Smet <ringo@automate-dev.com>
#
# Cookbook Name:: ad-buildtools
# Recipe:: _common_mac_os_x
#
# Copyright 2013, Automate.Dev
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

# Install homebrew and let it become the default package provider on Mac OS X
# http://brew.sh
include_recipe 'homebrew'

# Add links to additional brew scripts
# http://braumeister.org/
homebrew_tap 'homebrew/dupes'
homebrew_tap 'homebrew/versions'

# Add links to casks
# http://caskroom.io
include_recipe 'homebrew::cask'
homebrew_tap 'caskroom/versions'

# Set /usr/local/bin before /usr/bin
cookbook_file '/etc/paths' do
  source 'paths'
  mode 0644
  owner 'root'
  group 'wheel'
end