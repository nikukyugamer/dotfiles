#!/bin/bash

sudo yum install -y gcc openssl-devel readline-devel zlib-devel

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install 2.5.0
rbenv global 2.5.0
