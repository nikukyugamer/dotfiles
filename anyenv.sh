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

# 初回実行ではなぜかテンポラリファイルからの移動が失敗する
anyenv install rbenv

exit 0
