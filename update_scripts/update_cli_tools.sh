#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# Heroku や CircleCI はもはやファーストチョイスではないため、このスクリプトは実行されない
# 将来的にはどうなるかわからないので、一応残しておくが、頃合いを見て削除してよい
# cf. update_all.sh

UNAME=$(uname -a)

if echo "$UNAME" | grep -q arm; then
  # arm では heroku update は 404エラー になる
  echo 'arm: Heroku CLI の アップデート をスキップします'
elif echo "$UNAME" | grep -q aarch64; then
  # arm では heroku update は 404エラー になる
  echo 'aarch64: Heroku CLI の アップデート をスキップします'
else
  heroku update
  heroku plugins:install heroku-accounts
fi

if echo "$UNAME" | grep -q Darwin; then
  echo 'Update circleci...'
  circleci update
elif echo "$UNAME" | grep -q arm; then
  # 現状、arm では動作しない
  # circleci update
  echo 'Skip "circleci update"'
elif echo "$UNAME" | grep -q aarch64; then
  # 現状、arm では動作しない
  # circleci update
  echo 'aarch64: Skip "circleci update"'
elif echo "$UNAME" | grep -q Ubuntu; then
  echo 'Update circleci...'
  circleci update
elif echo "$UNAME" | grep -q el7; then
  echo 'Update circleci...'
  circleci update
else
  # echo 'What OS are you using?'
  echo 'Skip "circleci update"'
fi

exit 0
