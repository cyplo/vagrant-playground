#!/bin/bash
echo "DESTROYING OLD MACHINES"
vagrant destroy -f
vagrant plugin uninstall vagrant-vbguest
set -e
echo "BOOTING UP NEW ONES"
vagrant up
echo "MACHINES BOOTED UP AND SOFTWARE INSTALLED"
echo "REFRESHING GRAPHICS AND NETWORK DRIVERS"
sleep 2 

vagrant halt
vagrant plugin install vagrant-vbguest

#will update guest additions if the ones preinstalled are old
vagrant up

#if the guest additions are in the same version - reinstall
#only for gui box, as there we care about the video drivers
vagrant vbguest devbox --force --do rebuild

# reboot to reload kernel with guest additions
echo "REBOOTING"
#
vagrant halt
vagrant up

echo "YOUR DEV ENV IS READY"

