#!/bin/bash -xe

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "DO 'zplug install' manually"

exit 0

