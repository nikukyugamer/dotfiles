#!/bin/bash

echo '========================================'
echo 'Init directories for Go...'
mkdir -p ~/.go
mkdir -p ~/.ghq
echo '========================================'

echo '========================================'
echo 'Install/Update Docker Hub Tool "hub-tool"...'
GO111MODULE=on go install github.com/docker/hub-tool@latest
echo 'hub-tool installatin is done.'
echo '========================================'

# echo '========================================'
# echo 'Install/Update imgdiff (Faster than the fastest in the world pixel-by-pixel image difference tool.)'
# wget https://github.com/n7olkachev/imgdiff/releases/download/v1.0.0/imgdiff-linux-amd64 && chmod +x imgdiff-linux-amd64 && mv imgdiff-linux-amd64 imgdiff && sudo mv imgdiff /usr/local/bin
# wget https://github.com/n7olkachev/imgdiff/releases/download/v1.0.0/imgdiff-darwin-amd64
# echo 'A imgdiff instlattion id done.'
# echo '========================================'

echo '========================================'
echo 'Install/Update IPinfo (https://ipinfo.io/)'
go install github.com/ipinfo/cli/ipinfo@latest
echo 'An IPinfo instlattion is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update A time zone helper'
go install github.com/oz/tz@latest
echo 'A time zone helper instlattion is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update A tool for exploring a docker image'
go install github.com/wagoodman/dive@latest
echo 'A tool for exploring a docker image instlattion is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update GoTTY (a simple command line tool that turns your CLI tools into web applications)'
go install github.com/yudai/gotty@latest
echo 'GoTTY instlattion is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update Goreman (A Clone of foreman written in golang)'
go install github.com/mattn/goreman@latest
echo 'A Goreman instlattion is done.'
echo '========================================'

# 時間がかかるのでコメントアウト
# echo '========================================'
# echo 'Install/Update Hugo'
# mkdir $HOME/hugo_installer
# cd $HOME/hugo_installer
# git clone https://github.com/gohugoio/hugo.git
# cd hugo
# go install --tags extended
# cd $HOME
# /bin/rm -rf hugo_installer
# echo 'Hugo Done.'
# echo '========================================'

echo '========================================'
echo 'Install/Update Vegeta (A versatile HTTP load testing tool)'
go install github.com/tsenart/vegeta@latest
echo 'Vegeta Done.'
echo 'cf. https://camo.githubusercontent.com/417a39e5a142e0877be0a7a6d7a66cb77ea21e8c/687474703a2f2f666330392e64657669616e746172742e6e65742f667334392f692f323030392f3139382f632f632f73736a325f7665676574615f62795f7472756e6b7332342e6a7067'
echo '========================================'

echo '========================================'
echo 'Install/Update fillin'
echo 'https://github.com/itchyny/fillin'
go install github.com/itchyny/fillin@latest
echo '"fillin" installation has been done.'
echo '========================================'

echo '========================================'
echo 'Install/Update lazynpm'
go install github.com/jesseduffield/lazynpm@latest
echo 'lazynpm installation has been done.'
echo '========================================'

echo '========================================'
echo 'Install/Update longcat'
go install github.com/mattn/longcat@latest
echo 'Looooooooooooooooooooooooooooooooooooooooooooooong cat Done.'
echo '========================================'

# エラーが出るのでコメントアウト
# echo '========================================'
# echo 'Install/Update git-chglog (Git CHANGELOG generator)'
# go install github.com/git-chglog/git-chglog/cmd/git-chglog
# echo 'git-chglog Done.'
# echo '========================================'

echo '========================================'
echo 'Install/Update ghch (Generate changelog from git history)'
go install github.com/Songmu/ghch/cmd/ghch@latest
echo 'ghch Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update ojichatrix'
go install github.com/greymd/ojichatrix@latest
echo 'ojichatrix Done.'
echo '========================================'

# echo '========================================'
# echo 'Install/Update dep'
# go install github.com/golang/dep/cmd/dep@latest
# echo 'dep Done.'
# echo '========================================'

# Solving dependency is hard...
# echo 'Install/Update Terminal Timer...'
# go install github.com/drgrib/ttimer@latest
# echo 'Terminal Timer Done.'

echo '========================================'
echo 'Install/Update Tokyo Amesh...'
go install github.com/otiai10/amesh@latest
echo 'Tokyo Amesh Done.'
echo '========================================'

# Should be installed by package command
# echo '========================================'
# echo 'Install/Update peco...'
# go install github.com/peco/peco/cmd/peco@latest
# echo 'peco Done'
# echo '========================================'

echo '========================================'
echo 'Install/Update ghq...'
go install github.com/x-motemen/ghq@latest
echo 'ghq Done'
echo '========================================'

echo '========================================'
echo 'Install/Update hub...'
go install github.com/github/hub@latest
echo 'hub Done'
echo '========================================'

echo '========================================'
echo 'Install/Update gomi...'
go install github.com/b4b4r07/gomi@latest
echo 'gomi Done'
echo '========================================'

# echo '========================================'
# echo 'Install/Update gore...'
# go install github.com/motemen/gore/cmd/gore
# echo 'gore Done'
# echo '========================================'

# echo '========================================'
# echo 'Install/Update mdempsky/gocode...'
# go install github.com/mdempsky/gocode   # for code completion
# echo 'gocode Done'
# echo '========================================'

echo '========================================'
echo 'Install/Update pp...'
# or github.com/davecgh/go-spew/spew@latest
go install github.com/k0kubun/pp@latest
echo 'pp Done'
echo '========================================'

# echo '========================================'
# echo 'Install/Update godoc...'
# go install golang.org/x/tools/cmd/godoc # for using with the :doc colon-command
# echo '========================================'
# echo 'godoc Done'

# echo '========================================'
# echo 'Install/Update go-symbols...'
# go install github.com/acroca/go-symbols      # for VSCode
# echo '========================================'
# echo 'go-symbols Done'

# echo '========================================'
# echo 'Install/Update guru...'
# go install golang.org/x/tools/cmd/guru       # for VSCode
# echo '========================================'
# echo 'guru Done'

# echo '========================================'
# echo 'Install/Update gorename...'
# go install golang.org/x/tools/cmd/gorename   # for VSCode
# echo '========================================'
# echo 'gorename Done'

echo '========================================'
echo 'Install/Update dlv...'
# for VSCode
go install github.com/go-delve/delve/cmd/dlv@latest
echo 'dlv Done'
echo '========================================'

# Duplicated? -> (github.com/mdempsky/gocode)
echo '========================================'
echo 'Install/Update stamblerre/gocode...'
# for VSCode
go install github.com/stamblerre/gocode@latest
echo 'gocode Done'
echo '========================================'

echo '========================================'
echo 'Install/Update golint...'
# for VSCode
go install golang.org/x/lint/golint@latest
echo 'golint Done'
echo '========================================'

echo '========================================'
echo 'Install/Update jpcal...'
go install github.com/y-yagi/jpcal@latest
echo 'jpcal Done'
echo '========================================'

echo '========================================'
echo 'Install/Update ojichat...'
go install github.com/greymd/ojichat@latest
echo 'ojichat Done'
echo '========================================'

echo '========================================'
echo 'Install/Update lazydocker...'
go install github.com/jesseduffield/lazydocker@latest
echo 'lazydocker Done'
echo '========================================'

# https://github.com/zyedidia/micro#installation
# echo '========================================'
# echo 'Install/Update micro (Editor)...'
# go get -d github.com/zyedidia/micro/cmd/micro@latest
# cd $GOPATH/src/github.com/zyedidia/micro
# make install
# echo 'micro (Editor) Done'
# echo '========================================'

echo '========================================'
echo 'Install/Update Slack API in Go...'
go install github.com/nlopes/slack@latest
echo 'Slack API in Go Done'
echo '========================================'

echo '========================================'
echo 'Install/Update "memo" by mattn...'
go install github.com/mattn/memo@latest
echo '"memo" Done'
echo '========================================'

# https://github.com/qeesung/asciiplayer
echo '========================================'
echo 'Install/Update "ASCIIPlayer"...'
go install github.com/qeesung/asciiplayer@latest
echo '"ASCIIPlayer" Done'
echo '========================================'

# Twitter Clinet Powered by mattn
echo '========================================'
echo 'Install/Update twty (Twitter Client) developed by mattn'
go install github.com/mattn/twty@latest
echo 'twty (Twitter Client) Done.'
echo '========================================'

# Rename multiple files using your $EDITOR
# https://github.com/itchyny/mmv
echo '========================================'
echo 'Install/Update mmv'
go get github.com/itchyny/mmv/cmd/mmv@latest
echo 'mmv Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update jsonui'
go install github.com/gulyasm/jsonui@latest
echo 'jsonui Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update bed (Binary editor written in Go)'
go install github.com/itchyny/bed/cmd/bed@latest
echo 'bed Done.'
echo '========================================'

echo '========================================'
echo 'Install/Update Gin (Web Framework)'
go install github.com/gin-gonic/gin@latest
echo 'Gin installation has been done.'
echo '========================================'

echo '========================================'
echo 'Install/Update echo (Web Framework)'
go install github.com/labstack/echo@latest
echo 'echo installation has been done.'
echo '========================================'

# https://github.com/golang/tools/tree/master/gopls
echo '========================================'
echo 'Install/Update gopls, the Go language server'
GO111MODULE=on go install golang.org/x/tools/gopls@latest
echo 'gopls installation has been done.'
echo '========================================'

# インストールに失敗することがあるのでコメントアウト
# echo 'Install/Update "trdsql" (CLI tool that can execute SQL queries on CSV, JSON and etc)'
# go get -d github.com/noborus/trdsql
# cd $GOPATH/src/github.com/noborus/trdsql
# make
# make install
# echo '"trdsql" installation has done.'

exit 0
