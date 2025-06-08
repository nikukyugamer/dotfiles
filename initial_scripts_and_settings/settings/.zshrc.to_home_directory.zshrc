source ~/dotfiles/.zshrc

alias gu='~/.cargo/bin/gitui'

# ここを書き換えればプロンプトをオーバーライドできる
# PROMPT="%{${fg[green]}%}%n@%m@%*%{${reset_color}%}%F{yellow}%1v %F{blue}%(5~,%-2~/.../%1~,%~) $ %f"

# If you use macOS, install vim by Homebrew and uncomment a below line
# alias vi='/usr/local/bin/vim'

alias gl='git log --oneline --graph --decorate=full'
alias gc='git checkout'
alias gb='git branch'
alias gs='git switch'
alias gsb='git switch B'

# pnpx という旧コマンドはあるが接頭語 "pn" は統一したいので "pnx" とする
alias pn='pnpm'
alias pnx='pnpm exec'
alias pnrun='pnpm run'

# Useful expanded alias for some commands
alias cat='bat -p --pager "less -X"'
alias fzf='fzf --ansi'

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# pyenv
# uv へ全面的に移行するので pyenv は使わないようにする
# ただし不自由が出たら pyenv を使うかもしれない
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# direnv
eval "$(direnv hook zsh)"

# To configure your current shell run source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

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
# zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
# zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
# fzf でよく使う関数の詰め合わせ
zplug "mollifier/anyframe"

zplug load

# zoxide (https://github.com/ajeetdsouza/zoxide)
eval "$(zoxide init zsh)"
export _ZO_FZF_OPTS="--preview=''"

# ../completions/jenv.bash:15: command not found: complete を避けるため最後の方で読む
# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Fly.io CLI
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

source ~/.zshrc.userown.zshrc
