# If you update the ruby versions, please update the integration tests under
#   test/integration/default/bats/ruby.bats
override['rvm']['default_ruby'] = 'ruby-2.1.5'
override['rvm']['rubies'] = %w(ruby-2.1.3 ruby-2.1.5)
override['rvm']['group_users'] = node['ad-buildtools']['developers']
override['rvm']['global_gems'] = [
  {
    'name' => 'pkgr'
  }
]
