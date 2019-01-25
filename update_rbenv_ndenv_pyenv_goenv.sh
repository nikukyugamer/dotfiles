#!/bin/bash -xe

cd ~/.rbenv && git pull
cd ~/.rbenv/plugins/ruby-build && git pull

cd ~/.pyenv/plugins/pyenv-doctor && git pull
cd ~/.pyenv/plugins/pyenv-installer && git pull
cd ~/.pyenv/plugins/pyenv-update && git pull
cd ~/.pyenv/plugins/pyenv-virtualenv && git pull
cd ~/.pyenv/plugins/pyenv-which-ext && git pull
cd ~/.pyenv/plugins/python-build && git pull

cd ~/.ndenv && git pull
cd ~/.ndenv/plugins/node-build && git pull

cd ~/.goenv && git pull
cd ~/.goenv/plugins/go-build && git pull

exit 0
