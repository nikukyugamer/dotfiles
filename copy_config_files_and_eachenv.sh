#!/bin/bash -xe

cp .zshrc.eachenv.should_cp_to_home_directory ~/.zshrc
cp .vimrc.should_cp_to_home_directory ~/.vimrc
cp .gitconfig.should_cp_to_home_directory ~/.gitconfig
cp .czrc ~/.czrc

exit 0
