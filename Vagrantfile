# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

dev_box ="NinjaHamster/CentOS6.5-gui-dev-base"
server_box = "chef/centos-7.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "server" do |box|
    box.vm.provision "shell", path: "provision_common.sh"
    box.vm.box = server_box
  end

  config.vm.define "devbox" do |box|
    box.vm.box = dev_box
    box.vm.provision "shell", path: "provision_common.sh"
    box.vm.provision "shell", path: "provision_dev.sh"

    box.vm.provider "virtualbox" do |virtualbox|
        virtualbox.gui = true
    end 
  end

end

