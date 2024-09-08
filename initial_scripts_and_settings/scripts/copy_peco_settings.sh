#!/usr/bin/env bash
set -euxo pipefail

# TODO: copy_default_settings.sh に統合してもいい
mkdir -p "$HOME"/.config/peco
cp ../settings/config_peco_config.json "$HOME"/.config/peco/config.json

exit 0
