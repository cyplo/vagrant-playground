#!/bin/bash
vagrant destroy -f
vagrant plugin install vagrant-vbguest
vagrant up
vagrant vbguest --force
vagrant ssh -c "sudo reboot"

