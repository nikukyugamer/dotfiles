#!/usr/bin/env bash
echo 'fzf をアップデートします。'
cd "$HOME"/.fzf && git pull

expect -c "
  spawn ./install

  expect ]/n)
  send y\n

  expect ]/n)
  send y\n

  expect ]/n)
  send y\n

  expect \"For more information, see: https://github.com/junegunn/fzf\"

  exit 0
"
