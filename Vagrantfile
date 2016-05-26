# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  for i in [3000, 3001, 3030, 5000, 7000, 8000, 8080]
    config.vm.network :forwarded_port, guest: i, host: i
  end

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Allow the Vagrant box to share the SSH keys that are present on
  # the host machine. Helpful for cloning private git repositories.
  config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

  config.vm.provision :shell, name: "apt-get", path: "install/apt-get.sh"
  config.vm.provision :shell, name: "git", path: "install/git.sh"
  config.vm.provision :shell, name: "rbenv", path: "install/rbenv.sh", privileged: false
  config.vm.provision :shell, name: "ruby", path: "install/ruby.sh", privileged: false
  config.vm.provision :shell, name: "postgres", path: "install/postgres.sh", privileged: false
  config.vm.provision :shell, name: "sqlite", path: "install/sqlite.sh", privileged: false
  config.vm.provision :shell, name: "nvm", path: "install/nvm.sh", privileged: false
  config.vm.provision :shell, name: "redis", path: "install/redis.sh"
  config.vm.provision :shell, name: "heroku", path: "install/heroku.sh", privileged: false
  config.vm.provision :shell, name: "java", path: "install/java.sh", privileged: false
  config.vm.provision :shell, name: "qt", path: "install/qt.sh", privileged: false
  config.vm.provision :shell, name: "imagemagick", path: "install/imagemagick.sh", privileged: false
  config.vm.provision :shell, name: "phantomjs", path: "install/phantomjs.sh", privileged: true
end
