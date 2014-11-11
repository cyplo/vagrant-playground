#!/bin/bash
set -e
echo "DESTROYING OLD MACHINES"
vagrant destroy -f
echo "BOOTING UP NEW ONES"
vagrant plugin install vagrant-vbguest
vagrant up
echo "MACHINES BOOTED UP AND SOFTWARE INSTALLED"
echo "REFRESHING GRAPHICS AND NETWORK DRIVERS"
sleep5 
vagrant vbguest --force
echo "REBOOTING"
vagrant halt
vagrant up

