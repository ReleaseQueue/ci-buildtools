if platform_family?('debian')
  override['nodejs']['install_method'] = 'package'
end