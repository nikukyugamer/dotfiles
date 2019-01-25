#!/bin/bash -xe

# Golang is required
git clone http://github.com/zimbatm/direnv
cd direnv
sudo make install
cd ..
sudo rm -rf direnv

exit 0
