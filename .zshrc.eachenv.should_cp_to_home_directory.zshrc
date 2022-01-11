source ~/dotfiles/.zshrc

# alias imgcat='timg'
# alias imgcat='/mnt/d/Program\ Files/MassiGra/MassiGra.exe'

# ここを書き換えればプロンプトをオーバーライドできる
# PROMPT="%{${fg[green]}%}%n@%m@%*%{${reset_color}%}%F{yellow}%1v %F{blue}%(5~,%-2~/.../%1~,%~) $ %f"

# If you use macOS, install vim by Homebrew and uncomment a below line
# alias vi='/usr/local/bin/vim'

alias gl='git log --oneline --graph --decorate=full'
alias gc='git checkout'
alias gb='git branch'
alias gs='git status'
alias gitfastpush='git add . && git commit --amend --no-edit && git push -f'

# Useful expanded alias for some commands
alias cat='bat -p --pager "less -X"'
alias fzf='fzf --ansi'

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# goenv
# ここにこの順番（トップでインクルードする上でのこの順番）だと正しく適用されないのでコメントアウトする
# export GOENV_ROOT="$HOME/.goenv"
# export PATH="$GOENV_ROOT/bin:$PATH"
# eval "$(goenv init -)"

# phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# direnv
eval "$(direnv hook zsh)"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# To configure your current shell run source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

# Heroku
eval "$(heroku autocomplete:script zsh)"

# zplug
export ZPLUG_HOME="$HOME/.zplug"

# 自作シェルスクリプトなどを置く場所
export PATH="$HOME/bin:$PATH"

# TODO: 別ファイルに切り出す
source ~/.zplug/init.zsh
# 入力途中に候補をうっすら表示
zplug "zsh-users/zsh-autosuggestions"
# コマンドを種類ごとに色付け
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# ヒストリの補完を強化する
zplug "zsh-users/zsh-history-substring-search", defer:3
# zplug "b4b4r07/enhancd", use:init.sh
# 本体（連携前提のパーツ）
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
# fzf でよく使う関数の詰め合わせ
zplug "mollifier/anyframe"

zplug load

# For WSL2
# export BROWSER="/mnt/c/Program\ Files/Google/Chrome\ Dev/Application/chrome.exe"

# VOLTA は package.json に必ず上書きしてしまうので、現状 (2022/01/06) ではまだ常用できない
# export VOLTA_HOME="$HOME/.volta"
# export PATH="$VOLTA_HOME/bin:$PATH"

source ~/.zshrc.userown.zshrc
