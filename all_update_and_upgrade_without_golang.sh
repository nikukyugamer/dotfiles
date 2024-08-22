#!/usr/bin/env bash

# install_and_upgrade_packages
"$HOME"/dotfiles/install_and_upgrade_packages_of_rye_tools_install.sh
"$HOME"/dotfiles/install_and_upgrade_packages_of_pip.sh
"$HOME"/dotfiles/install_and_upgrade_packages_of_rust.sh
"$HOME"/dotfiles/install_and_upgrade_packages_of_npm.sh

# update_scripts
"$HOME"/dotfiles/update_scripts/update_rbenv_nodenv_pyenv_goenv_jenv_phpenv.sh
"$HOME"/dotfiles/update_scripts/update_fzf.sh
"$HOME"/dotfiles/update_scripts/update_cli_tools.sh
"$HOME"/dotfiles/update_scripts/update_rust.sh

"$HOME"/dotfiles/install_and_update_deno.sh
"$HOME"/dotfiles/install_and_update_pnpm.sh
"$HOME"/dotfiles/install_and_update_bun.sh
"$HOME"/dotfiles/install_and_update_rye.sh

exit 0
