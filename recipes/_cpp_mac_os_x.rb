#
# Author:: Ringo De Smet <ringo@automate-dev.com>
#
# Cookbook Name:: ad-buildtools
# Recipe:: _cpp_mac_os_x
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

# Add additional build-essential packages via Homebrew
%w{autoconf bison flex automake libtool pkg-config gcc46 libyaml readline libksba openssl}.each do |pkg|
  package pkg do
    action :install
  end
end