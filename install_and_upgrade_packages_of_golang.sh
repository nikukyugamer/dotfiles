#!/bin/bash

function go_install() {
  echo '======================================================='
  echo "[LOG] START: $ go install $1"
  echo '======================================================='

  go install "$1"

  echo '======================================================='
  echo "[LOG] END: $ go install $1"
  echo '======================================================='

  echo '**********************************************************************'
}

go_install github.com/docker/hub-tool@latest # GO111MODULE=on
go_install github.com/nektos/act@latest # act (GitHub Actions Local Exec Tool)
go_install github.com/ipinfo/cli/ipinfo@latest # IPinfo (https://ipinfo.io/)
go_install github.com/oz/tz@latest # A time zone helper
# go_install github.com/wagoodman/dive@latest # A tool for exploring a docker image
# go_install github.com/yudai/gotty@latest # a simple command line tool that turns your CLI tools into web applications
go_install github.com/mattn/goreman@latest # A Clone of foreman written in golang
# go_install github.com/tsenart/vegeta@latest # A versatile HTTP load testing tool
go_install github.com/itchyny/fillin@latest
go_install github.com/jesseduffield/lazynpm@latest
go_install github.com/jesseduffield/lazygit@latest # https://github.com/jesseduffield/lazygit
go_install github.com/mattn/longcat@latest
# go_install github.com/Songmu/ghch/cmd/ghch@latest # Generate changelog from git history
go_install github.com/greymd/ojichatrix@latest
go_install github.com/otiai10/amesh@latest
go_install github.com/x-motemen/ghq@latest
# go_install github.com/github/hub@latest
go_install github.com/b4b4r07/gomi@latest
# go_install github.com/k0kubun/pp@latest # or github.com/davecgh/go-spew/spew@latest
go_install github.com/go-delve/delve/cmd/dlv@latest # for VSCode
# go_install github.com/stamblerre/gocode@latest# # for VSCode. Duplicated? -> (github.com/mdempsky/gocode)
go_install golang.org/x/lint/golint@latest # for VSCode
go_install github.com/y-yagi/jpcal@latest
go_install github.com/greymd/ojichat@latest
go_install github.com/jesseduffield/lazydocker@latest
go_install github.com/nlopes/slack@latest
go_install github.com/mattn/memo@latest
# go_install github.com/qeesung/asciiplayer@latest # https://github.com/qeesung/asciiplayer
go_install github.com/mattn/twty@latest # twty (Twitter Client) developed by mattn
go_install github.com/itchyny/mmv/cmd/mmv@latest # Rename multiple files using your $EDITOR https://github.com/itchyny/mmv
# go_install github.com/gulyasm/jsonui@latest
go_install github.com/itchyny/bed/cmd/bed@latest # Binary editor written in Go
go_install github.com/gin-gonic/gin@latest # Gin (Web Framework)
go_install github.com/labstack/echo/v4@latest # echo (Web Framework) https://echo.labstack.com/

# For Visual Studio Code
go install -v golang.org/x/tools/gopls@latest
go install -v github.com/ramya-rao-a/go-outline@latest
go install -v golang.org/x/tools/cmd/goimports@latest

exit 0
