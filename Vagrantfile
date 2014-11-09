# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

base_box="cyplo/ubuntu-gnome-utopic-gui"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "devbox" do |box|
    box.vm.box = base_box
    box.vm.provision "shell", path: "provision.sh"
    box.vm.provider "virtualbox" do |virtualbox|
        virtualbox.gui = true
    end 
  end

end

