#!/bin/bash
#=====================================#
#                                     #
#           Webmin on Ubuntu          #
#                                     #
#=====================================#


apt update

sed -i "s/^deb http://download.webmin.com/download/repository sarge contrib/g" /etc/apt/sources.list
wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add
apt update

apt install webmin

ufw allow 10000
