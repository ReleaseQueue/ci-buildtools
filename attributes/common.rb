#
# Author:: Ringo De Smet (<ringo@automate-dev.com>)
# Cookbook Name:: ad-buildtools
# Attributes:: common

case node['platform_family']
  when 'debian'
    default['ad-buildtools']['common']['packages'] = ['libxml2-dev', 'libxslt1-dev']
  when 'mac_os_x'
    default['ad-buildtools']['common']['packages'] = ['libxml2', 'libxslt']
end
