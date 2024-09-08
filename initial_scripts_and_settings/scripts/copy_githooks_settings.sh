#!/usr/bin/env bash
set -euxo pipefail

# TODO: copy_default_settings.sh に統合してもいい
mkdir -p "$HOME"/.githooks
cp -R ../settings/githooks/* "$HOME"/.githooks

exit 0
