# If you update the ruby versions, please update the integration tests under
#   test/integration/default/bats/ruby.bats
override['rvm']['default_ruby'] = 'ruby-2.1.4'
override['rvm']['rubies'] = %w(ruby-2.1.4)
override['rvm']['group_users'] = node['ad-buildtools']['developers']