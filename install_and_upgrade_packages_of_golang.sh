#!/bin/bash

echo '========================================'
echo 'Init directories for Go...'
mkdir -p ~/.go
mkdir -p ~/.ghq
echo '========================================'

echo '========================================'
echo 'Install/Update Docker Hub Tool "hub-tool"...'
GO111MODULE=on go install github.com/docker/hub-tool@latest
echo 'hub-tool installation is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update act (GitHub Actions Local Exec Tool)'
go install github.com/nektos/act@latest
echo 'An act installation is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update IPinfo (https://ipinfo.io/)'
go install github.com/ipinfo/cli/ipinfo@latest
echo 'An IPinfo installation is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update A time zone helper'
go install github.com/oz/tz@latest
echo 'A time zone helper installation is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update A tool for exploring a docker image'
go install github.com/wagoodman/dive@latest
echo 'A tool for exploring a docker image installation is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update GoTTY (a simple command line tool that turns your CLI tools into web applications)'
go install github.com/yudai/gotty@latest
echo 'GoTTY installation is done.'
echo '========================================'

echo '========================================'
echo 'Install/Update Goreman (A Clone of foreman written in golang)'
go install github.com/mattn/goreman@latest
echo 'A Goreman installation is done.'
echo '========================================'

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

echo '========================================'
echo 'Install/Update Tokyo Amesh...'
go install github.com/otiai10/amesh@latest
echo 'Tokyo Amesh Done.'
echo '========================================'

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

echo '========================================'
echo 'Install/Update pp...'
# or github.com/davecgh/go-spew/spew@latest
go install github.com/k0kubun/pp@latest
echo 'pp Done'
echo '========================================'

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
go install github.com/itchyny/mmv/cmd/mmv@latest
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

exit 0

