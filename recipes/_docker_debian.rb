#
# Author:: Ringo De Smet <ringo@automate-dev.com>
#
# Cookbook Name:: ad-buildtools
# Recipe:: _docker_debian
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

include_recipe 'docker'

# Mimic the setup from the Wercker box
# https://github.com/wercker/wercker-labs-docker/blob/master/docker.json
remote_file '/etc/init/docker.conf' do
  source 'https://raw.github.com/dotcloud/docker/master/contrib/init/upstart/docker.conf'
  action :create
  notifies :restart, 'service[docker]', :immediately
end

service 'docker' do
  action :nothing
end