name             'ci-buildtools'
maintainer       'Ringo De Smet'
maintainer_email 'ringo@releasequeue.com'
license          'Apache 2.0'
description      'Installs/Configures ReleaseQueue Development Build Tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

supports 'ubuntu', '= 14.04'
supports 'mac_os_x', '= 10.9'

depends 'apt', '~> 2.7.0'
depends 'build-essential', '~> 2.2.2'
depends 'rvm', '~> 0.9.2'
depends 'java', '~> 1.31.0'
depends 'maven', '~> 1.3.0'
depends 'nodejs', '= 1.3.0'
depends 'homebrew', '= 1.9.0'
depends 'docker', '~> 0.36.0'
