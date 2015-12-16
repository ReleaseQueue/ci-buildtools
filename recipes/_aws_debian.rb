include_recipe 'python'
include_recipe 'apt'

package 'python-pip' do
  action :install
end

package 'groff' do
  action :install
end

python_pip 'awscli' do
  action :install
end
