directory "/pipeline" do
  owner 'root'
  group node['ci-buildtools']['group']
  mode 01775
  action :create
end