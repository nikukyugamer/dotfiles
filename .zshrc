# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/takiya/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# keybind like emacs
bindkey -e

# colored prompt
autoload -Uz colors
colors

# colored prompt
PROMPT="%{${fg[green]}%}%n@%m@%*%{${reset_color}%} %F{blue}%~ $%f "

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# path as bash
export PATH=$HOME/.nodebrew/current/bin:$PATH

# https://qiita.com/ktr_type23/items/3eb782f98c7a5f4c60b0
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
# historyを共有
setopt share_history
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
# 古いコマンドと同じものは無視
setopt hist_save_no_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 補完時にヒストリを自動的に展開
setopt hist_expand
# 履歴をインクリメンタルに追加
setopt inc_append_history
# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# lsに色をつける
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls --color=auto"
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# apt-get の親切機能
source /etc/zsh_command_not_found

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# colored less
export LESS='-i -M -R' # -N はコピペがしにくいので手動でつける
export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
