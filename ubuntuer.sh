#!/bin/sh -x

# Installation command

nodenv install -l | grep 14.1
nodenv versions

goenv install -l | tail -n 5
goenv versions

exit 0

