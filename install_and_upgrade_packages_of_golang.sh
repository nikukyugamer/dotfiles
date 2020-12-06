#!/bin/bash

echo '========================================'
echo 'Init directories for Go...'
mkdir ~/.go
mkdir ~/.ghq
echo '========================================'

echo '========================================'
echo 'Install/Update Hugo'
mkdir $HOME/hugo_installer
cd $HOME/hugo_installer
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install --tags extended
cd $HOME
/bin/rm -rf hugo_installer
echo 'Hugo Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update Vegeta (A versatile HTTP load testing tool)'
go get -u github.com/tsenart/vegeta
echo 'Vegeta Done.'
echo 'cf. https://camo.githubusercontent.com/417a39e5a142e0877be0a7a6d7a66cb77ea21e8c/687474703a2f2f666330392e64657669616e746172742e6e65742f667334392f692f323030392f3139382f632f632f73736a325f7665676574615f62795f7472756e6b7332342e6a7067'
echo '========================================'

echo '========================================'
echo 'Install/Update fillin'
echo 'https://github.com/itchyny/fillin'
go get -u github.com/itchyny/fillin
echo '"fillin" installation has been done.'
echo '========================================'

echo '========================================'
echo 'Install/Update lazynpm'
go get -u github.com/jesseduffield/lazynpm
echo 'lazynpm installation has been done.'
echo '========================================'

echo '========================================'
echo 'Install/Update longcat'
go get -u github.com/mattn/longcat
echo 'Looooooooooooooooooooooooooooooooooooooooooooooong cat Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update git-chglog (Git CHANGELOG generator)'
go get -u github.com/git-chglog/git-chglog/cmd/git-chglog
echo 'git-chglog Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update ghch (Generate changelog from git history)'
go get -u github.com/Songmu/ghch/cmd/ghch
echo 'ghch Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update ojichatrix'
go get -u github.com/greymd/ojichatrix
echo 'ojichatrix Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update dep'
go get -u github.com/golang/dep/cmd/dep
echo 'dep Done.'
echo '========================================'

# Solving dependency is hard...
# echo 'Install/Update Terminal Timer...'
# go get -u github.com/drgrib/ttimer
# echo 'Terminal Timer Done.'

echo '========================================'
echo 'Install/Update Tokyo Amesh...'
go get -u github.com/otiai10/amesh
echo 'Tokyo Amesh Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update peco...'
go get -u github.com/peco/peco/cmd/peco
echo 'peco Done'
echo '========================================'

echo '========================================'
echo 'Install/Update ghq...'
go get -u github.com/motemen/ghq
echo 'ghq Done'
echo '========================================'

echo '========================================'
echo 'Install/Update hub...'
go get -u github.com/github/hub
echo 'hub Done'
echo '========================================'

echo '========================================'
echo 'Install/Update gomi...'
go get -u github.com/b4b4r07/gomi
echo 'gomi Done'
echo '========================================'

echo '========================================'
echo 'Install/Update gore...'
go get -u github.com/motemen/gore/cmd/gore
echo 'gore Done'
echo '========================================'

echo '========================================'
echo 'Install/Update mdempsky/gocode...'
go get -u github.com/mdempsky/gocode   # for code completion
echo 'gocode Done'
echo '========================================'

echo '========================================'
echo 'Install/Update pp...'
go get -u github.com/k0kubun/pp        # or github.com/davecgh/go-spew/spew
echo 'pp Done'
echo '========================================'

echo '========================================'
echo 'Install/Update godoc...'
go get -u golang.org/x/tools/cmd/godoc # for using with the :doc colon-command
echo '========================================'
echo 'godoc Done'

echo '========================================'
echo 'Install/Update go-symbols...'
go get -u github.com/acroca/go-symbols      # for VSCode
echo '========================================'
echo 'go-symbols Done'

echo '========================================'
echo 'Install/Update guru...'
go get -u golang.org/x/tools/cmd/guru       # for VSCode
echo '========================================'
echo 'guru Done'

echo '========================================'
echo 'Install/Update gorename...'
go get -u golang.org/x/tools/cmd/gorename   # for VSCode
echo '========================================'
echo 'gorename Done'

echo '========================================'
echo 'Install/Update dlv...'
go get -u github.com/go-delve/delve/cmd/dlv # for VSCode
echo 'dlv Done'
echo '========================================'

# Duplicated? -> (github.com/mdempsky/gocode)
echo '========================================'
echo 'Install/Update stamblerre/gocode...'
go get -u github.com/stamblerre/gocode      # for VSCode
echo 'gocode Done'
echo '========================================'

echo '========================================'
echo 'Install/Update golint...'
go get -u golang.org/x/lint/golint          # for VSCode
echo 'golint Done'
echo '========================================'

echo '========================================'
echo 'Install/Update jpcal...'
go get -u github.com/y-yagi/jpcal
echo 'jpcal Done'
echo '========================================'

echo '========================================'
echo 'Install/Update ojichat...'
go get -u github.com/greymd/ojichat
echo 'ojichat Done'
echo '========================================'

echo '========================================'
echo 'Install/Update lazydocker...'
go get -u github.com/jesseduffield/lazydocker
echo 'lazydocker Done'
echo '========================================'

echo '========================================'
echo 'Install/Update micro (Editor)...'
go get -d github.com/zyedidia/micro/cmd/micro
cd $GOPATH/src/github.com/zyedidia/micro
make install
echo 'micro (Editor) Done'
echo '========================================'

echo '========================================'
echo 'Install/Update Slack API in Go...'
go get -u github.com/nlopes/slack
echo 'Slack API in Go Done'
echo '========================================'

echo '========================================'
echo 'Install/Update "memo" by mattn...'
go get -u github.com/mattn/memo
echo '"memo" Done'
echo '========================================'

# https://github.com/qeesung/asciiplayer
echo '========================================'
echo 'Install/Update "ASCIIPlayer"...'
go get -u github.com/qeesung/asciiplayer
echo '"ASCIIPlayer" Done'
echo '========================================'

# Twitter Clinet Powered by mattn
echo '========================================'
echo 'Install/Update twty (Twitter Client) developed by mattn'
go get -u github.com/mattn/twty
echo 'twty (Twitter Client) Done.'
echo '========================================'

# Rename multiple files using your $EDITOR
# https://github.com/itchyny/mmv
echo '========================================'
echo 'Install/Update mmv'
go get github.com/itchyny/mmv/cmd/mmv
echo 'mmv Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update jsonui'
go get -u github.com/gulyasm/jsonui
echo 'jsonui Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update bed (Binary editor written in Go)'
go get -u github.com/itchyny/bed/cmd/bed
echo 'bed Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update Gin (Web Framework)'
go get -u github.com/gin-gonic/gin
echo 'Gin installation has been done.'
echo '========================================'

# インストールに失敗することがあるのでコメントアウト
# echo 'Install/Update "trdsql" (CLI tool that can execute SQL queries on CSV, JSON and etc)'
# go get -d github.com/noborus/trdsql
# cd $GOPATH/src/github.com/noborus/trdsql
# make
# make install
# echo '"trdsql" installation has done.'

exit 0
