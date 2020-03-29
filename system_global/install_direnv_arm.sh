#!/bin/bash -xe

# If you install direnv via make install, it's necessary for root to execute go command
# This condition is severe so this script supports installation via downloading binary directly
# Note: Please confirm the latest binary version
# https://github.com/direnv/direnv/releases

wget https://github.com/direnv/direnv/releases/download/v2.21.2/direnv.linux-arm
mv direnv.linux-arm direnv
chmod +x direnv
sudo mv direnv /usr/local/bin

exit 0
