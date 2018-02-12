#!/bin/bash

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

git clone https://github.com/riywo/ndenv ~/.ndenv
git clone https://github.com/riywo/node-build.git $(ndenv root)/plugins/node-build

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
