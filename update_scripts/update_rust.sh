#!/usr/bin/env bash

echo 'CURRENT rustc Version is ...'
rustc --version

echo "Let's update Rust!"
rustup update stable

exit 0
