#!/usr/bin/env bash

cp .zshrc.eachenv.should_cp_to_home_directory.zshrc ~/.zshrc

# 既存のファイルがあった場合に上書きしないようにする
cp .zshrc.userown.zshrc ~/.zshrc.userown.zshrc.sample
cp .vimrc.should_cp_to_home_directory ~/.vimrc.sample
cp .gitconfig.should_cp_to_home_directory ~/.gitconfig.sample

exit 0
