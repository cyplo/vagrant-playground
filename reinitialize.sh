#!/bin/bash
set -e
echo "DESTROYING OLD MACHINES"
vagrant destroy -f
vagrant plugin uninstall vagrant-vbguest
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

