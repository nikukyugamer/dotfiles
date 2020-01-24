#!/bin/bash

echo 'Init directories...'
mkdir ~/.go
mkdir ~/.ghq

echo 'Install/Update Hugo'
mkdir $HOME/hugo_installer
cd $HOME/hugo_installer
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install --tags extended
cd $HOME
/bin/rm -rf hugo_installer
echo 'Hugo Done.'

echo 'Install/Update Vegeta (A versatile HTTP load testing tool)'
go get -u github.com/tsenart/vegeta
echo 'Vegeta Done.'
echo 'https://camo.githubusercontent.com/417a39e5a142e0877be0a7a6d7a66cb77ea21e8c/687474703a2f2f666330392e64657669616e746172742e6e65742f667334392f692f323030392f3139382f632f632f73736a325f7665676574615f62795f7472756e6b7332342e6a7067'

echo 'Install/Update longcat'
go get -u github.com/mattn/longcat
echo 'Looooooooooooooooooooooooooooooooooooooooooooooong cat Done.'

echo 'Install/Update git-chglog (Git CHANGELOG generator)'
go get -u github.com/git-chglog/git-chglog/cmd/git-chglog
echo 'git-chglog Done.'

echo 'Install/Update ghch (Generate changelog from git history)'
go get -u github.com/Songmu/ghch/cmd/ghch
echo 'ghch Done.'

echo 'Install/Update ojichatrix'
go get -u github.com/greymd/ojichatrix
echo 'ojichatrix Done.'

echo 'Install/Update dep'
go get -u github.com/golang/dep/cmd/dep
echo 'dep Done.'

# Solving dependency is hard...
# echo 'Install/Update Terminal Timer...'
# go get -u github.com/drgrib/ttimer
# echo 'Terminal Timer Done.'

echo 'Install/Update Tokyo Amesh...'
go get -u github.com/otiai10/amesh
echo 'Tokyo Amesh Done.'

echo 'Install/Update peco...'
go get -u github.com/peco/peco/cmd/peco
echo 'peco Done'

echo 'Install/Update ghq...'
go get -u github.com/motemen/ghq
echo 'ghq Done'

echo 'Install/Update hub...'
go get -u github.com/github/hub
echo 'hub Done'

echo 'Install/Update gomi...'
go get -u github.com/b4b4r07/gomi
echo 'gomi Done'

echo 'Install/Update gore...'
go get -u github.com/motemen/gore/cmd/gore
echo 'gore Done'

echo 'Install/Update mdempsky/gocode...'
go get -u github.com/mdempsky/gocode   # for code completion
echo 'gocode Done'

echo 'Install/Update pp...'
go get -u github.com/k0kubun/pp        # or github.com/davecgh/go-spew/spew
echo 'pp Done'

echo 'Install/Update godoc...'
go get -u golang.org/x/tools/cmd/godoc # for using with the :doc colon-command
echo 'godoc Done'

echo 'Install/Update go-symbols...'
go get -u github.com/acroca/go-symbols      # for VSCode
echo 'go-symbols Done'

echo 'Install/Update guru...'
go get -u golang.org/x/tools/cmd/guru       # for VSCode
echo 'guru Done'

echo 'Install/Update gorename...'
go get -u golang.org/x/tools/cmd/gorename   # for VSCode
echo 'gorename Done'

echo 'Install/Update dlv...'
go get -u github.com/go-delve/delve/cmd/dlv # for VSCode
echo 'dlv Done'

# Duplicated? -> (github.com/mdempsky/gocode)
echo 'Install/Update stamblerre/gocode...'
go get -u github.com/stamblerre/gocode      # for VSCode
echo 'gocode Done'

echo 'Install/Update golint...'
go get -u golang.org/x/lint/golint          # for VSCode
echo 'golint Done'

echo 'Install/Update jpcal...'
go get -u github.com/y-yagi/jpcal
echo 'jpcal Done'

echo 'Install/Update ojichat...'
go get -u github.com/greymd/ojichat
echo 'ojichat Done'

echo 'Install/Update lazydocker...'
go get -u github.com/jesseduffield/lazydocker
echo 'lazydocker Done'

echo 'Install/Update micro (Editor)...'
go get -d github.com/zyedidia/micro/cmd/micro
cd $GOPATH/src/github.com/zyedidia/micro
make install
echo 'micro (Editor) Done'

echo 'Install/Update Slack API in Go...'
go get -u github.com/nlopes/slack
echo 'Slack API in Go Done'

echo 'Install/Update "memo" by mattn...'
go get -u github.com/mattn/memo
echo '"memo" Done'

exit 0
