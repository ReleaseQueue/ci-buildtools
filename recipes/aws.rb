include_recipe 'ci-buildtools::common'

begin
  include_recipe "ci-buildtools::_aws_#{node['platform_family']}"
rescue Chef::Exceptions::RecipeNotFound
  Chef::Log.warn <<-EOH
A aws recipe does not exist for '#{node['platform_family']}'. This
means the ci-buildtools cookbook does not have support for the
#{node['platform_family']} family.
  EOH
end
