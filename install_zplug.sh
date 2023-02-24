#!/usr/bin/env bash -e

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "インストールした後は '$ zplug install' を手動で実行して下さい"

exit 0
