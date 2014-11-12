#!/bin/bash
sudo rpm --import /vagrant/xamarin.asc
sudo yum-config-manager --add-repo http://download.mono-project.com/repo/centos/
sudo yum -y install mono

