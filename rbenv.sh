#!/bin/bash

sudo yum install -y gcc openssl-devel readline-devel zlib-devel

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# if .bashrc
# sed -e '$ a export PATH=$HOME/.rbenv/bin:$PATH' -i ~/.bashrc
# sed -e '$ a eval "$(rbenv init -)"' -i ~/.bashrc↲
# source ~/.bashrc

# if .zshrc
sed -e '$ a export PATH=$HOME/.rbenv/bin:$PATH' -i ~/.zshrc
sed -e '$ a eval "$(rbenv init -)"' -i ~/.zshrc↲
source ~/.zshrc

rbenv install 2.5.0

