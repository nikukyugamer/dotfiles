#!/bin/bash

echo 'Init directories...'
mkdir ~/.go
mkdir ~/.ghq

echo 'Install peco...'
go get github.com/peco/peco/cmd/peco
echo 'Done'

echo 'Install ghq...'
go get github.com/motemen/ghq
echo 'Done'

echo 'Install hub...'
go get github.com/github/hub
echo 'Done'

echo 'Install gomi...'
go get -u github.com/b4b4r07/gomi/...
echo 'Done'

echo 'Install git-user...'
echo 'If you use macOS, use `git` command from Homebrew (If not so, an error may occur)'
go get -u github.com/gesquive/git-user
echo 'Done'

exit 0

