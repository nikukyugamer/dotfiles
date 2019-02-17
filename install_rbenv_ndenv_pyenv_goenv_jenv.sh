#!/bin/bash

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

git clone https://github.com/riywo/ndenv ~/.ndenv
git clone https://github.com/riywo/node-build.git ~/.ndenv/plugins/node-build

curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

git clone https://github.com/syndbg/goenv.git ~/.goenv

# https://github.com/jenv/jenv
git clone https://github.com/jenv/jenv.git ~/.jenv

