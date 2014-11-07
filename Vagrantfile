# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "node1" do |box|
    box.vm.box = "chef/debian-7.4"
  end

  config.vm.define "node2" do |box|
    box.vm.box = "chef/debian-7.4"
  end

end
