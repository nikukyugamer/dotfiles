source ~/.zplug/init.zsh

# --------------------------------------------------------------------------------
# eval で読み込むもの
# --------------------------------------------------------------------------------
# zoxide (https://github.com/ajeetdsouza/zoxide)
# cargo でインストールされる
eval "$(zoxide init zsh)"
export _ZO_FZF_OPTS="--preview=''"

# Starship
# cargo でインストールされる
eval "$(starship init zsh)"

# Homebrew on Linux
if [[ "${OSTYPE}" =~ .*linux.* ]]; then
  # いったんハードコーディングしている
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# --------------------------------------------------------------------------------
# zsh の基本機能
# --------------------------------------------------------------------------------
# デフォルトのパーミッションを設定する
# umask 0022 == chmod 0644
umask 0022

# https://sanoto-nittc.hatenablog.com/entry/2017/12/16/213735
setopt auto_list
setopt auto_menu
setopt auto_cd
zstyle ":completion:*:default" menu select=2
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30"
zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}

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

# --------------------------------------------------------------------------------
# キーバインド
# --------------------------------------------------------------------------------
# Emacs のキーバインドにする
bindkey -e

# zsh-autosuggestions のキーバインドを "control + ["" にする
bindkey "^[" autosuggest-accept

# macOS にて option + ←→ で単語単位で移動できるようにする
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  bindkey "\e[1;5D" backward-word
  bindkey "\e[1;3D" backward-word
  bindkey "\e[1;5C" forward-word
  bindkey "\e[1;3C" forward-word
fi

# --------------------------------------------------------------------------------
# zsh の基本機能 (darwin)
# --------------------------------------------------------------------------------
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# --------------------------------------------------------------------------------
# 環境変数 その1（通常はここに書く）
# --------------------------------------------------------------------------------
HISTFILE=~/.zsh_history
HISTSIZE="100000"
SAVEHIST="100000"

export LANG="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"
export LANGUAGE="ja_JP.UTF-8"

if command -v nvim >/dev/null 2>&1; then
  export EDITOR=nvim
elif command -v vim >/dev/null 2>&1; then
  export EDITOR=vim
else
  export EDITOR=vi
fi

# Android & Java in Android
# export JAVA_HOME=/Applications/"Android Studio.app"/Contents/jbr/Contents/Home
# export PATH=$PATH:/Applications/"Android Studio.app"/Contents/jbr/Contents/Home/bin
# export PATH=$PATH:~/Library/Android/sdk/platform-tools
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# # To configure your current shell run source $HOME/.cargo/env
# export PATH="$HOME/.cargo/bin:$PATH"

# Homebrew on macOS
export PATH="/opt/homebrew/bin:$PATH"

# GPG signature (For GitHub)
export GPG_TTY=$(tty)

# cf. https://qiita.com/delphinus/items/b04752bb5b64e6cc4ea9
# -N はコピペがしにくいので付けたい場合は手動で付ける
export LESS="-i -M -R"

# Ruby
export RUBY_YJIT_ENABLE=1

# composer
export PATH="$HOME/.composer/vendor/bin:$PATH"
export COMPOSER_HOME="$HOME/.composer"
export PATH="$PATH:./vendor/bin"

# lessの文字化けを防ぐ
export LESSCHARSET="utf-8"

# grep
# macOS での grep は GNU の "ggrep" を用いる
# TODO: sed や date や xargs などもその方がよい
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
  alias grep="/opt/homebrew/opt/grep/libexec/gnubin/grep --color=always -n -H"
elif [[ "${OSTYPE}" =~ .*linux.* ]]; then
  alias grep="grep --color=always -n -H"
else
  alias grep="grep --color=always -n -H"
fi

# Dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# EOL に表示されるマークである "%" を削除する
export PROMPT_EOL_MARK=""

# Embulk
export PATH="$HOME/.embulk/bin:$PATH"

# npm のパッケージマネージャで、プロジェクト配下にインストールした場合のバイナリをダイレクトに実行できるようにする
export PATH="$PATH:./node_modules/.bin"

# /usr/local/bin は最優先とみなしていいので、最終的に変更しておく（awscli 対策）
# TODO: ~/bin を優先したい場合も出てきたので再考の余地あり
export PATH="/usr/local/bin:$PATH"

# 自作シェルスクリプトなどを置く場所
export PATH="$HOME/bin:$PATH"

# Fly.io CLI
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# zplug
export ZPLUG_HOME="$HOME/.zplug"

# uv tools
export PATH="$HOME/.local/bin:$PATH"

# Android SDK (CLI)
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
fi

# Android Studio Platform-Tools
# こちらは Android Studio の状況に縛られる
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
fi

# Android SDK Platform-Tools (CLI)
# こちらは ローカル CLI のインストール状況に縛られる
# NOTE: こちらを優先するという意思表示から PATH の先頭に追加している（状況に応じて変更すること）
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  export PATH="$HOME/android/platform-tools:$PATH"
fi

# PostgreSQL 17
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
fi

# MySQL Client
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
fi

# SQLite Client
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
fi

# --------------------------------------------------------------------------------
# PATH が設定された後に読み込むべきもの
# --------------------------------------------------------------------------------

# direnv
eval "$(direnv hook zsh)"

# mise (https://mise.jdx.dev/)
eval "$(mise activate zsh)"

# --------------------------------------------------------------------------------
# エイリアス
# --------------------------------------------------------------------------------
alias cat="bat -p --pager 'less -X'"
alias fzf="fzf --ansi"
alias g="git"
alias gl="git log --oneline --graph --decorate=full"
# FIXME: 場所が変わるはず
alias gu="~/.cargo/bin/gitui"
alias lg="lazygit"
alias sqlite="sqlite3"
alias tf="terraform"
alias vim="nvim"

# skim (sk) のオプション付きエイリアスで、下で使うので先に定義しておかないとだめ
# 設定を上書きしたい場合は個人の .zshrc で上書きする
# 色の詳細は https://www.mm2d.net/main/prog/c/console-02.html を参照のこと
alias sk="sk --ansi --color='fg:7,bg:0,matched:5,matched_bg:0,current:2,current_bg:0,current_match:3,current_match_bg:0,spinner:1,info:6,prompt:1,cursor:3,selected:1,header:1,border:1' --layout='reverse' --multi"

# ghq
alias gg="cd \$(ghq root)/\$(ghq list | peco)"
alias gghome="gh repo view --web \$(ghq list | peco | cut -d '/' -f 2,3)"

# Ruby & Rails
alias be="bundle exec"
alias railsserver="bundle exec rails server"
alias railsconsole="bundle exec rails console"
alias railsroutes="bundle exec rails routes"
alias railscreds="bundle exec rails credentials:edit"
alias railsrunner="bundle exec rails runner"

# Python
alias venv=". .venv/bin/activate"

# Neovim
if [[ "${OSTYPE}" =~ .*darwin.* ]]; then
  alias vim="/opt/homebrew/bin/nvim"
  alias vi="/opt/homebrew/bin/nvim"
elif [[ "${OSTYPE}" =~ .*linux.* ]]; then
  alias vim="/usr/bin/nvim"
  alias vi="/usr/bin/nvim"
fi

# gomi
alias rm="gomi"
alias remove="/bin/rm"

# git
# NOTE: ここのクォートはシングルクォートを用いて遅延評価にしないとコマンドが即時実行されてしまう
alias -g B='`git branch | peco --prompt "GIT BRANCH>" | head -n 1 | sed -e "s/^\*\s*//g"`'
alias -g LR='`git branch -a | peco --query "remotes/ " --prompt "GIT REMOTE BRANCH>" | head -n 1 | sed "s/^\*\s*//" | sed "s/remotes\/[^\/]*\/\(\S*\)/\1 \0/"`'
alias -g C='`git log --oneline | peco | cut -d" " -f1`'
alias -g R='`git reflog | peco | cut -d" " -f1`'

# ls や git など
case "${OSTYPE}" in
darwin*)
  alias ls="lsd"
  alias ll="lsd -la"
  alias la="unbuffer ls -AG"
  alias l="exa -Tl --ignore-glob='vendor|node_modules|.git|.vscode|.history'"

  alias gl="git log --oneline --graph --decorate=full"
  alias gc="git checkout"
  alias gb="git branch"
  alias gs="git status -s"
  ;;
linux*)
  alias ls="lsd"
  alias ll="lsd -la"
  alias l="exa -Tl --ignore-glob='vendor|node_modules|.git|.vscode|.history'"
  alias la="lsd -a"
  alias lla="lsd -la"
  alias lt="lsd --tree"

  # カラー指定をする方法がわからん
  alias gl="git log --oneline --graph --decorate=full"
  alias gc="git checkout"
  alias gb="git branch"
  alias gs="git status"
  ;;
esac

# --------------------------------------------------------------------------------
# その他（仮）
# --------------------------------------------------------------------------------
# zsh の補完を有効にする
# The following lines were added by compinstall
# zstyle :compinstall filename '~/.zshrc'
fpath+="$HOME/dotfiles/zsh_completions"
autoload -Uz compinit
compinit
# End of lines added by compinstall

# fzf を有効にする
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# '/' を単語の境界として判定するようにして Ctrl + W で削除できるようにする
# cf. https://blog.3qe.us/entry/2025/05/20/201219
typeset -g WORDCHARS="${WORDCHARS:s@/@}"

# nohup コマンドが効くようにしてシェル終了時に起動中のジョブに SIGHUP を送らないようにする
setopt nohup

# --------------------------------------------------------------------------------
# お手製関数
# POSIX互換 で書いているので "function" は書かない
# --------------------------------------------------------------------------------
# git 用便利コマンド
ghash() {
  TARGET_LINE=$(git log --oneline --graph --decorate=full | peco)

  echo "$TARGET_LINE"

  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "$TARGET_LINE" | cut -d ' ' -f 2 | /usr/bin/pbcopy
  elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # WSL 2 を想定しているので uclip.exe を使う
    echo "$TARGET_LINE" | cut -d ' ' -f 2 | uclip.exe
  fi
}

# iTerm2 Shell Integration
badge() {
  printf "\e]1337;SetBadgeFormat=%s\a"\
  $(echo -n "$1" | base64)
}

ssher() {
  local ssh_config=~/.ssh/config
  local server=$(cat $ssh_config | grep "Host " | sed "s/Host //g" | fzf)
  if [ -z "$server" ]; then
      return
  fi
  badge $server
  ssh $server
}

# 1Password CLI
opget() {
  # Vault の絞り込みを行うこともできるが、面倒になるだけなので採用しなかった
  # op item list --vault $(op vault list | peco | cut -d " " -f 1) | peco | cut -d " " -f 1
  ITEM_ID=$(op item list | peco | cut -d " " -f 1)

  op item get $ITEM_ID
  op item get --format json $ITEM_ID | jq
}

# LastPass CLI
lpassget() {
  # TODO: ログインが求められるときは op を使って半自動ログインしたい
  # TODO: ログインを求められないときもあるから分岐が必要かも
  ITEM_ID=$(lpass ls | peco | sed -E 's/.*\[id: ([0-9]+)\].*/\1/')

  lpass show $ITEM_ID
  lpass show --json $ITEM_ID | jq
}

# --------------------------------------------------------------------------------
# zplug
# --------------------------------------------------------------------------------
zplug "zsh-users/zsh-autosuggestions" # 入力途中に候補をうっすら表示
zplug "zsh-users/zsh-syntax-highlighting", defer:2 # コマンドを種類ごとに色付け
zplug "zsh-users/zsh-history-substring-search", defer:3 # ヒストリの補完を強化する
zplug "mollifier/anyframe" # fzf でよく使う関数の詰め合わせ

zplug load
