# If you update the ruby versions, please update the integration tests under
#   test/integration/default/bats/ruby.bats
override['rvm']['default_ruby'] = 'ruby-1.9.3-p547'
override['rvm']['rubies'] = %w(ruby-1.9.3-p547 ruby-2.0.0-p481 ruby-2.1.2)
override['rvm']['group_users'] = node['ad-buildtools']['developers']
