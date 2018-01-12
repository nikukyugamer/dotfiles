#!/bin/bash

# v0.5.2
wget https://github.com/peco/peco/releases/download/v0.5.2/peco_linux_amd64.tar.gz
tar -zxvf peco_linux_amd64.tar.gz
sudo cp peco_linux_amd64/peco /usr/local/bin/peco
rm -r peco_linux_amd64
