#/bin/bash -xe

git clone https://github.com/riywo/anyenv ~/.anyenv

anyenv install rbenv
anyenv install plenv
anyenv install pyenv
anyenv install phpenv
anyenv install ndenv
anyenv install denv
anyenv install jenv
anyenv install luaenv
anyenv install goenv

exit 0
