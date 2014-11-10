#!/bin/bash
sudo rpm --import "https://pgp.mit.edu/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo http://download.mono-project.com/repo/centos/
sudo yum install -y mono

