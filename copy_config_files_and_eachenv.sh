#!/bin/bash -xe

cp .zshrc.eachenv.should_cp_to_home_directory.zshrc ~/.zshrc
cp .zshrc.userown.zshrc ~/.zshrc.userown.zshrc.sample
cp .vimrc.should_cp_to_home_directory ~/.vimrc
cp .gitconfig.should_cp_to_home_directory ~/.gitconfig.sample
# cp .czrc ~/.czrc

exit 0
