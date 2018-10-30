#!/bin/bash -e

echo 'install peco...'
go get github.com/peco/peco/cmd/peco
echo 'done'

echo 'install ghq...'
go get github.com/motemen/ghq
echo 'done'

echo 'install hub...'
go get github.com/github/hub
echo 'done'

exit 0

