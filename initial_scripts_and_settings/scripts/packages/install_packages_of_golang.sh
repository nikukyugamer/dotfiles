#!/usr/bin/env bash

function go_install() {
  echo '======================================================='
  echo "[LOG] START: $ go install -v $1"
  echo '======================================================='

  go install -v "$1"

  echo '======================================================='
  echo "[LOG] END: $ go install -v $1"
  echo '======================================================='

  echo '**********************************************************************'
}

go_install mvdan.cc/sh/v3/cmd/shfmt@latest

go_install github.com/babarot/gomi@latest
go_install github.com/charmbracelet/vhs@latest
go_install github.com/Clever/csvlint/cmd/csvlint@latest # https://github.com/Clever/csvlint
go_install github.com/docker/hub-tool@latest            # GO111MODULE=on
go_install github.com/go-delve/delve/cmd/dlv@latest     # for VSCode
go_install github.com/greymd/ojichat@latest
go_install github.com/greymd/ojichatrix@latest
go_install github.com/ipinfo/cli/ipinfo@latest   # IPinfo (https://ipinfo.io/)
go_install github.com/itchyny/bed/cmd/bed@latest # Binary editor written in Go
go_install github.com/itchyny/fillin@latest
go_install github.com/itchyny/mmv/cmd/mmv@latest # Rename multiple files using your $EDITOR https://github.com/itchyny/mmv
go_install github.com/jesseduffield/lazydocker@latest
go_install github.com/jesseduffield/lazygit@latest # https://github.com/jesseduffield/lazygit
go_install github.com/jesseduffield/lazynpm@latest
go_install github.com/k1LoW/tbls@main         # tbls is a CI-Friendly tool for document a database
go_install github.com/labstack/echo/v4@latest # echo (Web Framework) https://echo.labstack.com/
go_install github.com/mackee/go-readability/cmd/readability@latest # go-readability
go_install github.com/mattn/goreman@latest    # A Clone of foreman written in golang
go_install github.com/mattn/longcat@latest
go_install github.com/mattn/memo@latest
go_install github.com/mattn/twty@latest       # twty (Twitter Client) developed by mattn
go_install github.com/mithrandie/csvq@latest  # https://github.com/mithrandie/csvq
go_install github.com/msoap/shell2http@latest # shell2http (https://github.com/msoap/shell2http)
go_install github.com/neilotoole/sq@latest # sq is a command line tool that provides jq-style access to structured data sources: SQL databases, or document formats like CSV or Excel. It is the lovechild of sql+jq.
go_install github.com/nlopes/slack@latest
go_install github.com/otiai10/amesh@latest
go_install github.com/oz/tz@latest # A time zone helper
go_install github.com/ramya-rao-a/go-outline@latest
go_install github.com/rclone/rclone@latest # https://rclone.org/
go_install github.com/rhysd/actionlint/cmd/actionlint@latest # actionlint (Lint for GitHub Actions)
go_install github.com/simonwhitaker/gibo@latest # https://github.com/simonwhitaker/gibo@latest
go_install github.com/traefik/yaegi/cmd/yaegi@latest         # インタプリタ (REPL)
go_install github.com/wader/fq@latest                        # Tool, language and decoders for working with binary data.
go_install github.com/x-motemen/ghq@latest
go_install github.com/y-yagi/jpcal@latest
go_install golang.org/x/lint/golint@latest # for VSCode
go_install golang.org/x/tools/cmd/goimports@latest
go_install golang.org/x/tools/gopls@latest # For Visual Studio Code

exit 0
