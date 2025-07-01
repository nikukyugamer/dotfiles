source ~/dotfiles/.zshrc

# 自作シェルスクリプトなどを置く場所
export PATH="$HOME/bin:$PATH"

# To configure your current shell run source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

# Fly.io CLI
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# Homebrew on Mac
# export PATH=/opt/homebrew/bin:$PATH

# プロンプトのオーバーライド
# PROMPT="%{${fg[green]}%}%n@%m@%*%{${reset_color}%}%F{yellow}%1v %F{blue}%(5~,%-2~/.../%1~,%~) $ %f"

# --------------------------------------------------------------------------------
# バージョン管理ツールや CLI など
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

# fnm (https://github.com/Schniz/fnm)
eval "$(fnm env --use-on-cd --shell zsh)"
# --------------------------------------------------------------------------------

# --------------------------------------------------------------------------------
# alias
# --------------------------------------------------------------------------------
# If you use macOS, install vim by Homebrew and uncomment a below line
# alias vi='/usr/local/bin/vim'

alias gu='~/.cargo/bin/gitui'
alias gl='git log --oneline --graph --decorate=full'

# Useful expanded alias for some commands
alias cat='bat -p --pager "less -X"'
alias fzf='fzf --ansi'
# --------------------------------------------------------------------------------

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

source ~/.zshrc.userown.zshrc

# --------------------------------------------------------------------------------
# 以下、自動生成（適宜調整する）
# --------------------------------------------------------------------------------

# # pnpm
# export PNPM_HOME="/Users/takiya/.local/share/pnpm"
# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" ;;
# esac
# # pnpm end

# # bun completions
# [ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# ### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
# export PATH="~/.rd/bin:$PATH"
# ### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# ## [Completion]
# ## Completion scripts setup. Remove the following line to uninstall
# [[ -f ~/.dart-cli-completion/zsh-config.zsh ]] && . ~/.dart-cli-completion/zsh-config.zsh || true
# ## [/Completion]

# # The next line updates PATH for the Google Cloud SDK.
# if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then . '~/google-cloud-sdk/path.zsh.inc'; fi

# # The next line enables shell command completion for gcloud.
# if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi
