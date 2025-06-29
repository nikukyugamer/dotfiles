#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# TODO: copy_default_settings.sh に統合してもいい
mkdir -p "$HOME"/.githooks
cp -R "$HOME"/dotfiles/initial_scripts_and_settings/settings/githooks/* "$HOME"/.githooks

exit 0
