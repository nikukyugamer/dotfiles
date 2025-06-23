# Emacs のキーバインドにする
bindkey -e

export LANG="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"
export LANGUAGE="ja_JP.UTF-8"

# For GPG signature (GitHub)
export GPG_TTY=$(tty)

# Permission of Files and Directories
# umask 0022 == chmod 0644
umask 0022

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# TODO: 書く場所をここでなくもうちょっと意味ごとにまとめたい
# TODO: 正確な分岐にするには Apple Silicon の条件も追加する必要がある
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# The following lines were added by compinstall
# 補完を有効化する
# zstyle :compinstall filename '~/.zshrc'
fpath+=$HOME/dotfiles/zsh_completions
autoload -Uz compinit
compinit
# End of lines added by compinstall

# コマンドを Vim で編集する
# cf. https://dev.classmethod.jp/articles/eetann-zle-edit-command-line/
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey "^N" edit-command-line

# '/' を単語の境界として認める
# cf. https://blog.3qe.us/entry/2025/05/20/201219
typeset -g WORDCHARS=${WORDCHARS:s@/@}

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

# https://sanoto-nittc.hatenablog.com/entry/2017/12/16/213735
setopt auto_list
setopt auto_menu
setopt auto_cd
zstyle ':completion:*:default' menu select=2
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# https://qiita.com/ktr_type23/items/3eb782f98c7a5f4c60b0
setopt hist_ignore_dups # history の重複を記録しない
setopt EXTENDED_HISTORY # history の開始と終了を記録
setopt share_history # history を共有する
setopt hist_ignore_all_dups # history に追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_space # history にてスペースで始まるコマンド行は削除する
setopt hist_verify # history にて呼び出してから実行する間に一旦編集可能
setopt hist_reduce_blanks # history の余分な空白を詰めて記録
setopt hist_save_no_dups # history にて古いコマンドと同じものは無視
setopt hist_no_store # history にて history コマンド自体は履歴に登録しない
setopt hist_expand # 補完時に history を自動的に展開する
setopt inc_append_history # history をインクリメンタルに追加する

# macOS と Linux で色の付け方が異なる
# $ echo $OSTYPE は、Ubuntu や CentOS だと linux-gnu になり、macOS だと darwinXY.Z になる
# cf. macOS だけに存在するコマンド $ sw_vers の終了ステータスで判別する方法もある
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
  alias l="exa -Tl --ignore-glob='vendor|node_modules|.git|.vscode|.history'"
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

  # FIXME: macOS なら /usr/bin/pbcopy にして、WSL2 ならば uclip.exe にする
  # uclip: https://github.com/suzusime/uclip
  # ただしもちろん SSH で入った場合には pbcopy は正常に動かないので注意
  echo $TARGET_LINE | cut -d ' ' -f 2 | uclip.exe
}

# cf. https://qiita.com/delphinus/items/b04752bb5b64e6cc4ea9
export LESS='-i -M -R' # -N はコピペがしにくいので付けたい場合は手動で付ける

# Default editor
export EDITOR="vim"

# 不要か移動すべきかも
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

# For Rails
alias railsserver='bundle exec rails server'
alias railsconsole='bundle exec rails console'
alias railsroutes='bundle exec rails routes'
alias railscreds='bundle exec rails credentials:edit'
alias railsrunner='bundle exec rails runner'

# https://github.com/b4b4r07/gomi
alias rm='gomi'
alias remove='/bin/rm'

# 不要か移動すべきかも
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

# FIXME: もはや URI やディレクトリ、戻り値等が変わってしまっているので、削除して、別途ツールを探すなどする
# cf. https://qiita.com/satodoc/items/8a28e84e6467e49b3f85 （この情報も古い）
# $ docker search "by tags"
function docker-tags {
  curl -s https://registry.hub.docker.com/v1/repositories/$1/tags | jq -r '.[].name'
}

# /usr/local/bin は最優先とみなしていいので、最終的に変更しておく（awscli 対策）
# TODO: ~/bin を優先したい場合も出てきたので再考の余地あり
export PATH="/usr/local/bin:$PATH"

# Google Cloud
alias gcps='gcloud alpha storage'

# エディタでのハイライトを効かせるために拡張子を .zshrc としている
source ~/dotfiles/.zshrc.docker.zshrc

# Node.js & Yarn
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

# Golang
# https://zenn.dev/tennashi/articles/3b87a8d924bc9c43573e
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)" # goenv init しないと $GOROOT や $GOPATH が定義されない
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

# Embulk
export PATH="$HOME/.embulk/bin:$PATH"

# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"
alias tf='terraform'

# direnv
eval "$(direnv hook zsh)"

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# pnpm（Ubuntu も macOS も共通）
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# bun（Ubuntu も macOS も共通）
export PATH="$HOME/.bun/bin:$PATH"

# 1Password CLI
function opget () {
  # Vault の絞り込みを行うこともできるが、面倒になるだけなので採用しなかった
  # op item list --vault $(op vault list | peco | cut -d " " -f 1) | peco | cut -d " " -f 1
  ITEM_ID=$(op item list | peco | cut -d " " -f 1)

  op item get $ITEM_ID
  op item get --format json $ITEM_ID | jq
}

# LastPass CLI
lpassget () {
  ITEM_ID=$(lpass ls | peco | sed -E 's/.*\[id: ([0-9]+)\].*/\1/')
  lpass show $ITEM_ID
  lpass show --json $ITEM_ID | jq
}

# fnm (https://github.com/Schniz/fnm)
eval "$(fnm env --use-on-cd --shell zsh)"

# cargo や go で入れたものを eval する際などは読み込みの順序に注意する（ここに書くと動かないときがある）

# OS ごとに処理を分けるテンプレート
RELEASE_FILE=/etc/os-release
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  # macOS の場合の処理をここに書く
  echo "Hello, macOS!"
elif grep -e '^NAME="Ubuntu' $RELEASE_FILE >/dev/null; then
  # Ubuntu の場合の処理をここに書く
  echo "Hello, Ubuntu!"
elif grep -e '^NAME="Linux Mint' $RELEASE_FILE >/dev/null; then
  # Linux Mint の場合の処理をここに書く
  echo "Hello, Linux Mint!"
elif grep -e '^NAME="CentOS' $RELEASE_FILE >/dev/null; then
  # CentOS の場合の処理をここに書く
  echo "Hello, CentOS!"
elif grep -e '^NAME="Amazon' $RELEASE_FILE >/dev/null; then
  # Amazon Linux の場合の処理をここに書く
  echo "Hello, Amazon Linux!"
else
  # その他の場合の処理をここに書く
  echo "Hello, Anonymous OS!"
fi
