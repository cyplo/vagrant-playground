#!/bin/bash
echo "DESTROYING OLD MACHINES"
vagrant destroy -f
vagrant plugin uninstall vagrant-vbguest
set -e
echo "BOOTING UP NEW ONES"
vagrant up
echo "MACHINES BOOTED UP AND SOFTWARE INSTALLED"
echo "REFRESHING GRAPHICS AND NETWORK DRIVERS"
sleep5 
vagrant vbguest --force
echo "REBOOTING"
vagrant halt
vagrant plugin install vagrant-vbguest
vagrant up

