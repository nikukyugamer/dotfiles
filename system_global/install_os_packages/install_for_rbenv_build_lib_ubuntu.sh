#!/bin/bash -xe

# Depending on your version of Ubuntu/Debian/Mint, libgdbm5 won't be available. In that case, try with libgdbm3.
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev libpq-dev -y

exit 0
