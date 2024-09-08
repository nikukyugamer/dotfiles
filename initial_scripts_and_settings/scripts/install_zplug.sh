#!/usr/bin/env bash
set -e

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "インストールした後は '$ source ~/.zshrc' した後に '$ zplug install' を実行して下さい。"

exit 0
