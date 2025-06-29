source ~/dotfiles/.zshrc

# ここを書き換えればプロンプトをオーバーライドできる
# PROMPT="%{${fg[green]}%}%n@%m@%*%{${reset_color}%}%F{yellow}%1v %F{blue}%(5~,%-2~/.../%1~,%~) $ %f"

# If you use macOS, install vim by Homebrew and uncomment a below line
# alias vi='/usr/local/bin/vim'

alias gu='~/.cargo/bin/gitui'

alias gl='git log --oneline --graph --decorate=full'

# Useful expanded alias for some commands
alias cat='bat -p --pager "less -X"'
alias fzf='fzf --ansi'

# 自作シェルスクリプトなどを置く場所
export PATH="$HOME/bin:$PATH"

# --------------------------------------------------------------------------------
# zplug
# --------------------------------------------------------------------------------
export ZPLUG_HOME="$HOME/.zplug"

source ~/.zplug/init.zsh

# 入力途中に候補をうっすら表示
zplug "zsh-users/zsh-autosuggestions"

# コマンドを種類ごとに色付け
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# ヒストリの補完を強化する
zplug "zsh-users/zsh-history-substring-search", defer:3

# fzf でよく使う関数の詰め合わせ
zplug "mollifier/anyframe"

zplug load
# --------------------------------------------------------------------------------

# zoxide (https://github.com/ajeetdsouza/zoxide)
eval "$(zoxide init zsh)"
export _ZO_FZF_OPTS="--preview=''"

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

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

# Fly.io CLI
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

source ~/.zshrc.userown.zshrc
