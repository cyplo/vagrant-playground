# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

base_box="ubuntu/trusty64"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provision "shell", path: "provision.sh"

  config.vm.define "node1" do |box|
    box.vm.box = base_box
  end

  config.vm.define "node2" do |box|
    box.vm.box = base_box
  end

end
