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

# 不要か移動すべきかも
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

# 不要か移動すべきかも
# Golang
# https://zenn.dev/tennashi/articles/3b87a8d924bc9c43573e
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)" # goenv init しないと $GOROOT や $GOPATH が定義されない
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

# 不要か移動すべきかも
# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"
alias tf='terraform'

# 不要か移動すべきかも
# direnv
eval "$(direnv hook zsh)"

# Embulk
export PATH="$HOME/.embulk/bin:$PATH"

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
alias ber='bundle exec rails'
alias berce='bundle exec rails credentials:edit'

# For Rails
alias railsserver='bundle exec rails server'
alias railsconsole='bundle exec rails console'
alias railsroutes='bundle exec rails routes'
alias railscreds='bundle exec rails credentials:edit'

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

# $ docker search "by tags"
function docker-tags {
  curl -s https://registry.hub.docker.com/v1/repositories/$1/tags | jq -r '.[].name'
}

# /usr/local/bin は最優先とみなしていいので、最終的に変更しておく（awscli 対策）
export PATH="/usr/local/bin:$PATH"

# Google Cloud
alias gcps='gcloud alpha storage'

# エディタでのハイライトを効かせるために拡張子を .zshrc としている
source ~/dotfiles/.zshrc.docker.zshrc

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

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

# 不要か移動すべきかも
# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Volta
export PATH="$VOLTA_HOME/bin:$PATH"

# cargo や go で入れたものを eval する際などは読み込みの順序に注意する（ここに書くと動かないときがある）
