#
# Author:: Ringo De Smet <ringo@automate-dev.com>
#
# Cookbook Name:: ad-buildtools
# Recipe:: _nodejs_debian
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

include_recipe 'nodejs'

include_recipe 'apt'

# Fix/workaround for the startup failure of the PhantomJS headless browser
# https://github.com/karma-runner/karma-phantomjs-launcher/issues/31
package 'libfontconfig' do
  action :install
end

