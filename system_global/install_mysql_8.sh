#!/bin/bash -xe

# "mysql-apt-config_0.8.13-1_all.deb" is a hard-coding part
wget https://dev.mysql.com/get/mysql-apt-config_0.8.13-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb
rm mysql-apt-config_0.8.13-1_all.deb

sudo apt-get update
sudo apt-get install -y mysql-server

exit 0
