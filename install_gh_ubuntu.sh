#!/bin/sh -xe
# https://github.com/cli/cli

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository -u https://cli.github.com/packages
sudo apt install gh

exit 0

