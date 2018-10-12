#!/bin/bash

wget https://github.com/peco/peco/releases/download/v0.5.3/peco_linux_amd64.tar.gz
tar -zxvf peco_linux_amd64.tar.gz
sudo cp peco_linux_amd64/peco /usr/local/bin/peco
rm -r -f peco_linux_amd64
