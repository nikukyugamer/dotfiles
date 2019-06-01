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

echo 'Install/Update gore...'
go get -u github.com/motemen/gore/cmd/gore
echo 'Done'

echo 'Install/Update mdempsky/gocode...'
go get -u github.com/mdempsky/gocode   # for code completion
echo 'Done'

echo 'Install/Update pp...'
go get -u github.com/k0kubun/pp        # or github.com/davecgh/go-spew/spew
echo 'Done'

echo 'Install/Update godoc...'
go get -u golang.org/x/tools/cmd/godoc # for using with the :doc colon-command
echo 'Done'

echo 'Install/Update go-symbols...'
go get -u github.com/acroca/go-symbols      # for VSCode
echo 'Done'

echo 'Install/Update guru...'
go get -u golang.org/x/tools/cmd/guru       # for VSCode
echo 'Done'

echo 'Install/Update gorename...'
go get -u golang.org/x/tools/cmd/gorename   # for VSCode
echo 'Done'

echo 'Install/Update dlv...'
go get -u github.com/go-delve/delve/cmd/dlv # for VSCode
echo 'Done'

# Duplicated? -> (github.com/mdempsky/gocode)
echo 'Install/Update stamblerre/gocode...'
go get -u github.com/stamblerre/gocode      # for VSCode
echo 'Done'

echo 'Install/Update golint...'
go get -u golang.org/x/lint/golint          # for VSCode
echo 'Done'

echo 'Install/Update jpcal...'
go get -u github.com/y-yagi/jpcal
echo 'Done'

echo 'Install/Update ojichat...'
go get -u github.com/greymd/ojichat
echo 'Done'

exit 0
