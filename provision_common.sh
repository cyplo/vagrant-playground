#!/bin/bash
sudo yum -y install deltarpm yum-utils
sudo yum -y groups mark convert
sudo yum -y groups mark install
sudo yum -y upgrade 
sudo rpm --import "https://pgp.mit.edu/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
sudo yum-config-manager --add-repo http://download.mono-project.com/repo/centos/
sudo yum -y install mono
