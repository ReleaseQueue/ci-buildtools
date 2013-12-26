name             'ad-buildtools'
maintainer       'Ringo De Smet'
maintainer_email 'ringo@automate-dev.com'
license          'Apache 2.0'
description      'Installs/Configures Automate.Dev Development Build Tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w[ubuntu].each do |os|
  supports os
end

depends 'apt', '= 2.2.0'
depends 'rvm'
depends 'maven', '= 1.1.0'