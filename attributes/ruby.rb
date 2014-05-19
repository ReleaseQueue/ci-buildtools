# If you update the ruby versions, please update the integration tests under
#   test/integration/default/bats/ruby.bats
override['rvm']['default_ruby'] = 'ruby-1.9.3-p448'
override['rvm']['rubies'] = %w(ruby-1.9.2-p320 ruby-1.9.3-p448 ruby-2.0.0-p195)
