#!/bin/bash
# init directories でコケる可能性があるため -xe は付与しない

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

exit 0

