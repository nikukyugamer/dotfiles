#!/bin/bash

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

git clone https://github.com/riywo/ndenv ~/.ndenv
git clone https://github.com/riywo/node-build.git $(ndenv root)/plugins/node-build

# git clone https://github.com/pyenv/pyenv.git ~/.pyenv
# git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
# curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# [Ubuntu]
# (Build Ruby)
# $ sudo apt-get install gcc build-essential libssl-dev libreadline-dev zlib1g-dev
# (Build Python)
# $ sudo apt-get install libbz2-dev libreadline-dev libsqlite3-dev
