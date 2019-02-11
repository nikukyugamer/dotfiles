#!/bin/bash

echo 'Init directories...'
mkdir ~/.go
mkdir ~/.ghq

echo 'Install/Update peco...'
go get -u github.com/peco/peco/cmd/peco
echo 'Done'

echo 'Install/Update ghq...'
go get -u github.com/motemen/ghq
echo 'Done'

echo 'Install/Update hub...'
go get -u github.com/github/hub
echo 'Done'

echo 'Install/Update gomi...'
go get -u github.com/b4b4r07/gomi/...
echo 'Done'

exit 0

