#!/bin/bash

wget https://github.com/peco/peco/releases/download/v0.5.3/peco_linux_arm.tar.gz
tar -zxvf peco_linux_arm.tar.gz
sudo cp peco_linux_arm/peco /usr/local/bin/peco
rm -r -f peco_linux_arm
rm peco_linux_arm.tar.gz
