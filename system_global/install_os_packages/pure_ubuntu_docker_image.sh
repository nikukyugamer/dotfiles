#!/bin/bash

sudo apt update
sudo apt dist-upgrade -y
sudo apt install -y --force-yes --no-install-recommends wget curl build-essential git peco language-pack-ja software-properties-common

sudo apt clean
sudo apt autoremove

exit 0
