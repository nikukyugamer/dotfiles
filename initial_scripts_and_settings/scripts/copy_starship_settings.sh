#!/usr/bin/env bash
set -euxo pipefail

# TODO: copy_default_settings.sh に統合してもいい
mkdir -p "$HOME"/.config
cp ../settings/starship.toml "$HOME"/.config/starship.toml

exit 0
