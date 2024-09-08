#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# TODO: copy_default_settings.sh に統合してもいい
mkdir -p "$HOME"/.config/peco
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/config_peco_config.json "$HOME"/.config/peco/config.json

exit 0
