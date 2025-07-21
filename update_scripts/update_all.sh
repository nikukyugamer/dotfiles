#!/usr/bin/env bash

# CLI ツールのアップデート
"$HOME"/dotfiles/update_scripts/cli_installers/update_rbenv_phpenv.sh
"$HOME"/dotfiles/update_scripts/cli_installers/update_fzf.sh

# 改行を入れて見た目を整える
echo

# パッケージのアップデート
"$HOME"/dotfiles/update_scripts/packages/update_packages_of_uv_tools.sh
"$HOME"/dotfiles/update_scripts/packages/update_packages_of_rust.sh
"$HOME"/dotfiles/update_scripts/packages/update_packages_of_npm.sh
"$HOME"/dotfiles/update_scripts/packages/update_packages_of_golang.sh

# 改行を入れて見た目を整える
echo

# 処理系のアップデート
"$HOME"/dotfiles/update_scripts/cli_installers/update_pnpm.sh

exit 0
