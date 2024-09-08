#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# TODO: copy_default_settings.sh に統合してもいい
mkdir -p "$HOME"/.config
cp "$HOME"/dotfiles/initial_scripts_and_settings/settings/starship.toml "$HOME"/.config/starship.toml

exit 0
