# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.hostname = "ad-buildtools"

  config.vm.boot_timeout = 120

  # The path to the Berksfile to use with Vagrant Berkshelf
  # config.berkshelf.berksfile_path = "./Berksfile"

  # Enabling the Berkshelf plugin. To enable this globally, add this configuration
  # option to your ~/.vagrant.d/Vagrantfile file
  config.berkshelf.enabled = true

  # An array of symbols representing groups of cookbook described in the Vagrantfile
  # to exclusively install and copy to Vagrant's shelf.
  # config.berkshelf.only = []

  # An array of symbols representing groups of cookbook described in the Vagrantfile
  # to skip installing and copying to Vagrant's shelf.
  # config.berkshelf.except = []

  # Use the vagrant-omnibus plugin to install a specific Chef version before provisioning
  config.omnibus.chef_version = '11.6.0'

  # Ubuntu 13.04
  config.vm.define 'ubuntu_13_04' do |ubuntu_13_04|

    # Every Vagrant virtual environment requires a box to build off of.
    ubuntu_13_04.vm.box = 'automatedev-server-ubuntu-13.04-amd64'

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    ubuntu_13_04.vm.box_url = 'http://assets.automate-dev.be/development/vagrant/virtualbox/automatedev-server-ubuntu-13.04-amd64.box'

    # Assign this VM to a host-only network IP, allowing you to access it
    # via the IP. Host-only networks can talk to the host machine as well as
    # any other machines on the same network, but cannot be accessed (through this
    # network interface) by any external networks.
    ubuntu_13_04.vm.network :private_network, ip: '192.168.95.95'

  end

  # Ubuntu 13.10
  config.vm.define 'ubuntu_13_10' do |ubuntu_13_10|

    # Every Vagrant virtual environment requires a box to build off of.
    ubuntu_13_10.vm.box = 'automatedev-server-ubuntu-13.10-amd64'

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    ubuntu_13_10.vm.box_url = 'http://assets.automate-dev.be/development/vagrant/virtualbox/automatedev-server-ubuntu-13.10-amd64.box'

    # Assign this VM to a host-only network IP, allowing you to access it
    # via the IP. Host-only networks can talk to the host machine as well as
    # any other machines on the same network, but cannot be accessed (through this
    # network interface) by any external networks.
    ubuntu_13_10.vm.network :private_network, ip: '192.168.95.96'

  end

  # Provision with Chef Solo
  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        'recipe[ad-buildtools]'
    ]
  end
end
