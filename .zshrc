export LANG="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"
export LANGUAGE="ja_JP.UTF-8"

# For GPG signature (for GitHub)
export GPG_TTY=$(tty)

# macOS Mojave
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# For Ruby app servers breaking on High Sierra
# https://blog.phusion.nl/2017/10/13/why-ruby-app-servers-break-on-macos-high-sierra-and-what-can-be-done-about-it/
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Permission of Files and Directorys
# umask 0022 == chmod 0644
umask 0022

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
# 補完を有効化する
# zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# keybind like emacs
bindkey -e

# Git branch
# http://liosk.blog103.fc2.com/blog-entry-209.html
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ' [%b]'
precmd() {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  psvar[1]=$vcs_info_msg_0_
}

# Starship
eval "$(starship init zsh)"

# colored prompt
# autoload -Uz colors
# colors
# PROMPT="%{${fg[green]}%}%n@%m@%*%{${reset_color}%}%F{yellow}%1v %F{blue}%(5~,%-2~/.../%1~,%~) $ %f"

# https://sanoto-nittc.hatenablog.com/entry/2017/12/16/213735
setopt auto_list
setopt auto_menu
setopt auto_cd
zstyle ':completion:*:default' menu select=2
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# https://qiita.com/ktr_type23/items/3eb782f98c7a5f4c60b0
setopt hist_ignore_dups # 重複を記録しない
setopt EXTENDED_HISTORY # 開始と終了を記録
setopt share_history # historyを共有
setopt hist_ignore_all_dups # ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_space # スペースで始まるコマンド行はヒストリリストから削除
setopt hist_verify # ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_reduce_blanks # 余分な空白は詰めて記録
setopt hist_save_no_dups # 古いコマンドと同じものは無視
setopt hist_no_store # historyコマンドは履歴に登録しない
setopt hist_expand # 補完時にヒストリを自動的に展開
setopt inc_append_history # 履歴をインクリメンタルに追加

# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# Docker コマンド 一般
alias dc='docker container'
alias di='docker image'
alias dv='docker volume'

# Docker Volume
function dvcreate () {
  CURRENT_DATETIME=$(date '+%Y%m%d_%H%M%S')

  echo "[$ docker volume create --driver=local --name=xbox_volume_${CURRENT_DATETIME}]"
  docker volume create --driver=local --name=xbox_volume_${CURRENT_DATETIME} $@
}

function dvlss () {
  docker volume ls -q | peco | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g"
}

## git s B と同等のエイリアス
alias DV='$(dvlss)'

# Docker Image
function dibuild () {
  CURRENT_DATETIME=$(date '+%Y%m%d_%H%M%S')
  RANDOM_PORT_NUMBER=$(shuf -i 10000-65000 -n 1)

  echo "[$ docker image build --tag xbox_image_${CURRENT_DATETIME}:latest (--file ./Dockerfile .)]"
  docker image build --tag xbox_image_${CURRENT_DATETIME}:latest $@
}

## イメージ一覧を最小限の情報で表示する
alias dils='docker image ls --format "{{.Repository}}:{{.Tag}} ({{.ID}}) / {{.CreatedSince}}" | sed "/docker\/.*/d" | sed "/k8s.gcr.io\/.*/d" | sort -h'

## イメージ名を peco で選択できるようにする
function dilss () {
  DILS_PECO=$(dils | peco)

  if [ $(echo $DILS_PECO | cut -d " " -f 1 | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g") = '<none>:<none>' ]; then
    echo $DILS_PECO | cut -d " " -f 2 | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g" | sed "s/(//g" | sed "s/)//g"
  else
    echo $DILS_PECO | cut -d " " -f 1 | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g"
  fi
}

## git s B と同等のエイリアス
alias DI='$(dilss)'

## peco 経由でイメージを選んでコマンドを実行する (ex. $ diexec inspect)
## 引数を使うため function にする
funciton diexec () {
  echo '[$ docker image $@]'
  docker image $@ $(dilss)
}

## イメージを一覧から選んで破壊する
function dirm () {
  TARGET_IMAGE_NAME=$(dilss)

  echo '[$ docker image rm]'
  echo "[REMOVED] ${TARGET_IMAGE_NAME}"
  docker image rm ${TARGET_IMAGE_NAME}
}

# Docker Container
## コンテナ一覧を最小限の情報で表示する
alias dcls='docker container ls --all --format "{{.State}}\t| {{.Names}} | {{.Image}} | {{.ID}}"'

## コンテナ名を peco で選択できるようにする（さらにパイプでクリップボードに渡すなどすると便利）
alias dclss='dcls | peco | cut -d "|" -f 2 | sed "s/^[ \t]*//" | sed -z "s/\n//g" | sed -z "s/ //g"'
alias DC='$(dclss)'

## コンテナ内でコマンドを実行する ($ dcexec ls -la)
alias dcexec='docker container exec -it $(docker container ls --all --format "{{.State}}\t| {{.Names}} | {{.Image}} | {{.ID}}" | peco | cut -d "|" -f 2) | sed "s/^[ \t]*//"'

## コンテナに /bin/sh で入る
function dcsh () {
  TARGET_CONTAINER_NAME=$(dclss)

  echo '[$ docker container start]'
  docker container start ${TARGET_CONTAINER_NAME}
  echo '[$ docker container exec ... /bin/sh]'
  docker container exec -it ${TARGET_CONTAINER_NAME} /bin/sh
}

## コンテナに /bin/bash で入る
function dcbash () {
  TARGET_CONTAINER_NAME=$(dclss)

  echo '[$ docker container start]'
  docker container start ${TARGET_CONTAINER_NAME}
  echo '[$ docker container exec ... /bin/bash]'
  docker container exec -it ${TARGET_CONTAINER_NAME} /bin/bash
}

## コンテナに /bin/zsh で入る
function dczsh () {
  TARGET_CONTAINER_NAME=$(dclss)

  echo '[$ docker container start]'
  docker container start ${TARGET_CONTAINER_NAME}
  echo '[$ docker container exec ... /bin/zsh]'
  docker container exec -it ${TARGET_CONTAINER_NAME} /bin/zsh
}

## 新たにコンテナを作成する（シェルは自分で引数で指定する）
function dccreate () {
  CURRENT_DATETIME=$(date '+%Y%m%d_%H%M%S')
  RANDOM_PORT_NUMBER=$(shuf -i 10000-65000 -n 1)

  echo "[$ docker container run -p ${RANDOM_PORT_NUMBER}:${RANDOM_PORT_NUMBER}]"
  docker container run --name xbox_container_${CURRENT_DATETIME} --interactive --tty -p ${RANDOM_PORT_NUMBER}:${RANDOM_PORT_NUMBER} $@ $(dilss)
}

## コンテナを実行してすぐにぶっ壊す
alias dcrun='docker container run --rm $(dilss)'

## コンテナを一覧から選んで破壊する
function dcrm () {
  TARGET_CONTAINER_NAME=$(dclss)

  echo '[$ docker container stop]'
  echo "[STOPPED] ${TARGET_CONTAINER_NAME}"
  docker container stop ${TARGET_CONTAINER_NAME}

  echo '[$ docker container rm]'
  echo "[REMOVED] ${TARGET_CONTAINER_NAME}"
  docker container rm ${TARGET_CONTAINER_NAME}
}

# Docker Compose
## Docker Compose コマンドを簡単に扱えるようにする
alias dcom='docker compose'

## cf. $ dcomexec web ls -la / $ DOCKER_COMPOSE_TARGET_SERVICE=web dcom ls
function dcomexec () {
  TARGET_SERVICE=$DOCKER_COMPOSE_TARGET_SERVICE

  docker compose exec $TARGET_SERVICE $@
}

# macOS と Linux で色の付け方が異なる
## macOS か否か の判定には sw_vers の終了ステータスが使える
case "${OSTYPE}" in
darwin*)
  alias ls="lsd"
  alias ll="lsd -la"
  alias la="unbuffer ls -AG"
  alias l="exa -Tl --ignore-glob='vendor|node_modules|.git|.vscode|.history'"

  alias gl='git log --oneline --graph --decorate=full'
  alias gc='git checkout'
  alias gb='git branch'
  alias gs='git status -s'
  ;;
linux*)
  alias ls='lsd'
  alias ll='lsd -la'
  alias l='lsd -l'
  alias la='lsd -a'
  alias lla='lsd -la'
  alias lt='lsd --tree'

  # カラー指定をする方法がわからん
  alias gl='git log --oneline --graph --decorate=full'
  alias gc='git checkout'
  alias gb='git branch'
  alias gs='git status'
  ;;
esac

# git 用便利コマンド
function ghash () {
  TARGET_LINE=$(git log --oneline --graph --decorate=full | peco)

  echo $TARGET_LINE
  echo $TARGET_LINE | cut -d ' ' -f 2 | clip.exe
}

# apt-get の親切機能（Debian だけの機能らしいので注意）
RELEASE_FILE=/etc/os-release
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  # 何もしない
elif grep -e '^NAME="Ubuntu' $RELEASE_FILE >/dev/null; then
  # AWS だと存在しなかったのでコメントアウト……
  # source /etc/zsh_command_not_found
elif grep -e '^NAME="Linux Mint' $RELEASE_FILE >/dev/null; then
  # AWS だと存在しなかったのでコメントアウト……
  # source /etc/zsh_command_not_found
else
  # その他の場合の処理（CentOS とかも差し当たりここ）
fi

# less に色を付ける（要 install source-highlight）
export LESS='-i -M -R' # -N はコピペがしにくいので付けたい場合は手動で付ける

# 一箇所だけだからいいが、以下の判定部分が増えると DRY でなくなるだろう
RELEASE_FILE=/etc/os-release
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
elif grep -e '^NAME="CentOS' $RELEASE_FILE >/dev/null; then
  export LESSOPEN='| /usr/bin/src-hilite-lesspipe.sh %s'
elif grep -e '^NAME="Amazon' $RELEASE_FILE >/dev/null; then
  # Amazon Linuxの場合はここに書く
elif grep -e '^NAME="Ubuntu' $RELEASE_FILE >/dev/null; then
  export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
elif grep -e '^NAME="Linux Mint' $RELEASE_FILE >/dev/null; then
  export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
else
  # その他のディストリビューションの場合はここに書く
fi

export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

# Golang
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"

# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"
alias tf='terraform'

# direnv
eval "$(direnv hook zsh)"

# Embulk
export PATH="$HOME/.embulk/bin:$PATH"

# Default editor
export EDITOR="vim"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# composer
export PATH="$HOME/.composer/vendor/bin:$PATH"
export COMPOSER_HOME="$HOME/.composer" # using zsh on Ubuntu, default COMPOSER_HOME is $HOME/.config/composer ??
export PATH="$PATH:./vendor/bin"

# ghq
alias gg='cd $(ghq root)/$(ghq list | peco)'
alias gghome='gh repo view --web $(ghq list | peco | cut -d "/" -f 2,3)'
# WSL2 の場合は export BROWSER="/mnt/c/Program\ Files/Google/Chrome\ Dev/Application/chrome.exe" などと指定するとよい

# lessの文字化けを防ぐ
export LESSCHARSET=utf-8

# For Bundler
alias be='bundle exec'
alias ber='bundle exec rails'
alias berce='bundle exec rails credentials:edit'

# For Rails
alias railsserver='bundle exec rails server'
alias railsconsole='bundle exec rails console'
alias railsspec='bundle exec rails spec'
alias railsroutes='bundle exec rails routes'
alias railscred='bundle exec rails credentials:edit'

# https://github.com/b4b4r07/gomi
alias rm='gomi'
alias remove='/bin/rm'

# Add my binaries
export PATH="$PATH:$HOME/dotfiles/bin"

# Dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Remove EOL's '%' when Golang or so
export PROMPT_EOL_MARK=''

# With peco
alias g='git'
alias -g B='`git branch | peco --prompt "GIT BRANCH>" | head -n 1 | sed -e "s/^\*\s*//g"`'
alias -g LR='`git branch -a | peco --query "remotes/ " --prompt "GIT REMOTE BRANCH>" | head -n 1 | sed "s/^\*\s*//" | sed "s/remotes\/[^\/]*\/\(\S*\)/\1 \0/"`'
alias -g C='`git log --oneline | peco | cut -d" " -f1`'
alias -g R='`git reflog | peco | cut -d" " -f1`'

# For 'gh' command
eval "$(gh completion -s zsh)"

# Complement Key-Bind
# zsh-autosuggestions のキーバインドを control + [ にする
bindkey '^[' autosuggest-accept

# nohup コマンドが効くようにする（シェル終了時に起動中のジョブに SIGHUP を送らない）
setopt nohup

# For iTerm2 with Shell Integration
function badge() {
  printf "\e]1337;SetBadgeFormat=%s\a"\
  $(echo -n "$1" | base64)
}

function ssher() {
  local ssh_config=~/.ssh/config
  local server=$(cat $ssh_config | grep "Host " | sed "s/Host //g" | fzf)
  if [ -z "$server" ]; then
      return
  fi
  badge $server
  ssh $server
}

# $ docker search "by tags"
function docker-tags {
  curl -s https://registry.hub.docker.com/v1/repositories/$1/tags | jq -r '.[].name'
}

# /usr/local/bin は最優先とみなしていいので、最終的に変更しておく（awscli 対策）
export PATH="/usr/local/bin:$PATH"

# Google Cloud
alias gcps='gcloud alpha storage'
