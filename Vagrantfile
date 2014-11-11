# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

server_box = "chef/centos-7.0"
dev_box = server_box

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "server" do |box|
    box.vm.provision "shell", path: "provision_basics.sh"
    box.vm.provision "shell", path: "provision_mono.sh"
    box.vm.box = server_box
  end

  config.vm.define "devbox" do |box|
    box.vm.box = dev_box
    box.vm.provision "shell", path: "provision_basics.sh"
    box.vm.provision "shell", path: "provision_mono.sh"
    box.vm.provision "shell", path: "provision_dev.sh"

    box.vm.provider "virtualbox" do |virtualbox|
        virtualbox.gui = true
        virtualbox.customize ["modifyvm", :id, "--memory", "4096"]
        virtualbox.customize ["modifyvm", :id, "--cpus", "4"]
        virtualbox.customize ["modifyvm", :id, "--vram", "128"]
    end 
  end

end

