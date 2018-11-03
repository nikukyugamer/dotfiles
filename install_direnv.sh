#!/bin/bash -xe

git clone http://github.com/zimbatm/direnv
cd direnv
sudo make install
cd ..
rm -rf direnv

exit 0
