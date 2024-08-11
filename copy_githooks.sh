#!/usr/bin/env bash
set -euxo pipefail

mkdir -p $HOME/.githooks
cp -R githooks/* $HOME/.githooks

exit 0
