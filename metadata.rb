name             'ad-buildtools'
maintainer       'Ringo De Smet'
maintainer_email 'ringo@automate-dev.com'
license          'Apache 2.0'
description      'Installs/Configures Automate.Dev Development Build Tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.3'

supports 'ubuntu', '= 12.04'
supports 'mac_os_x', '= 10.9'

depends 'apt', '= 2.2.0'
depends 'build-essential', '= 2.0.4'
depends 'rvm', '= 0.9.2'
depends 'java', '= 1.22.0'
depends 'maven', '= 1.1.0'
depends 'nodejs', '= 1.3.0'
depends 'homebrew', '= 1.9.0'
