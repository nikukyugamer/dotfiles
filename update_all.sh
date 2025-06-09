#!/usr/bin/env bash

# CLI ツールのアップデート
"$HOME"/dotfiles/update_scripts/update_rbenv_nodenv_goenv_jenv_phpenv.sh
"$HOME"/dotfiles/update_scripts/update_fzf.sh

echo

# パッケージのアップデート
"$HOME"/dotfiles/update_scripts/update_packages_of_uv_tools.sh
"$HOME"/dotfiles/update_scripts/update_packages_of_rust.sh
"$HOME"/dotfiles/update_scripts/update_packages_of_npm.sh
"$HOME"/dotfiles/update_scripts/update_packages_of_golang.sh

# 処理系のアップデート
"$HOME"/dotfiles/update_scripts/update_bun.sh
"$HOME"/dotfiles/update_scripts/update_deno.sh
"$HOME"/dotfiles/update_scripts/update_pnpm.sh
"$HOME"/dotfiles/update_scripts/update_rust.sh

exit 0
