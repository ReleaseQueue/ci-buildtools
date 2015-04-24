#
# Author:: Ringo De Smet <ringo@releasequeue.com>
#
# Cookbook Name:: ci-buildtools
# Recipe:: _packaging_debian
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

include_recipe 'apt'

package 'apt-transport-https' do
  action :install
end

apt_repository 'multiverse' do
  uri 'http://archive.ubuntu.com/ubuntu/'
  components ['multiverse']
  distribution node['lsb']['codename']
  action :add
end

apt_repository 'swaddle' do
  uri 'https://raphaelcohn.github.io/swaddle/download/apt'
  components ['multiverse']
  distribution 'swaddle'
  key 'BFEEA2E71B9C4AF0'
  keyserver 'keys.niif.hu'
  action :add
  deb_src false
end

package 'swaddle' do
  action :install
end
