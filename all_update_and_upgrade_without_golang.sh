#!/bin/bash

./install_and_upgrade_packages_of_golang.sh
./install_and_upgrade_packages_of_pip.sh
./install_and_upgrade_packages_of_rust.sh
./install_and_upgrade_packages_of_npm.sh

# ./install_packages_of_rubygems.sh

# ./update_rbenv_nodenv_pyenv_goenv_jenv.sh

# 対話あり
./update_fzf.sh

./update_cli_tools.sh
./update_rust.sh

exit 0

