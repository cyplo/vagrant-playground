#!/bin/bash
sudo yum install -y monodevelop 
sudo yum -y groupinstall "GNOME desktop"
sudo ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target

