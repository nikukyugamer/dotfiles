#!/bin/bash

echo '----------'

echo '~/.rbenv'
cd ~/.rbenv && git pull
echo '----------'

echo '~/.rbenv/plugins/ruby-build'
cd ~/.rbenv/plugins/ruby-build && git pull
echo '----------'

echo '~/.pyenv/plugins/pyenv-doctor'
cd ~/.pyenv/plugins/pyenv-doctor && git pull
echo '----------'

echo '~/.pyenv/plugins/pyenv-installer'
cd ~/.pyenv/plugins/pyenv-installer && git pull
echo '----------'

echo '~/.pyenv/plugins/pyenv-update'
cd ~/.pyenv/plugins/pyenv-update && git pull
echo '----------'

echo '~/.pyenv/plugins/pyenv-virtualenv'
cd ~/.pyenv/plugins/pyenv-virtualenv && git pull
echo '----------'

echo '~/.pyenv/plugins/pyenv-which-ext'
cd ~/.pyenv/plugins/pyenv-which-ext && git pull
echo '----------'

echo '~/.pyenv/plugins/python-build'
cd ~/.pyenv/plugins/python-build && git pull
echo '----------'

echo '~/.nodenv'
cd ~/.nodenv && git pull
echo '----------'

echo '~/.nodenv/plugins/node-build'
cd ~/.nodenv/plugins/node-build && git pull
echo '----------'

echo '~/.goenv'
cd ~/.goenv && git pull
echo '----------'

echo '~/.goenv/plugins/go-build'
cd ~/.goenv/plugins/go-build && git pull
echo '----------'

echo '~/.jenv'
cd ~/.jenv && git pull
echo '----------'

exit 0
