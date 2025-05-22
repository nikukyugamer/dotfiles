# ユーザごとに独自に設定したい内容を記述する

# macOS にて option + ←→ で単語単位で移動できるようにする
# bindkey "\e[1;5D" backward-word
# bindkey "\e[1;3D" backward-word
# bindkey "\e[1;5C" forward-word
# bindkey "\e[1;3C" forward-word

# Neovim をデフォルトのエディタにする
# export EDITOR=$(which nvim)

# ソースからビルドした最新の git を使う
# PATH=$HOME/bin/latest_git/bin:$PATH

# Flutter (Use fvm)
# export FLUTTER_HOME=$HOME/fvm/default
# export PATH=$PATH:$FLUTTER_HOME/bin

# 1Password CLI
# export ONE_PASSWORD_MY_PASSWORD=op://Personal/jjztc5so2hlsskzuhzu2toh3cu/password

# sudo でエイリアスが使えるようにする（sudo vim で neovim になるようにする）
# https://qiita.com/homoluctus/items/ba1a6d03df85e65fc85a
# alias sudo="sudo "

# uv tool
# export PATH="$HOME/.local/bin:$PATH"

# uv
# alias venv=". .venv/bin/activate"

# Lazygit
# alias lg="lazygit"

# DeepL API
# export DEEPL_TOKEN=

# ssh-agent
# if [ -f ~/.ssh-agent ]; then
#     . ~/.ssh-agent
# fi
# if [ -z "$SSH_AGENT_PID" ] || ! kill -0 $SSH_AGENT_PID; then
#     ssh-agent > ~/.ssh-agent
#     . ~/.ssh-agent
# fi
# ssh-add -l >& /dev/null || ssh-add

################################################################################
# 以下は Mac 特有の設定
################################################################################
# Mac で rbenv を直接インストールする場合に必要（現在は不要？）
# これがないと rbenv install だけでなく fastlane で SSL に失敗したりもする
# export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
# export RUBY_CONFIGURE_OPTS="--disable-shared --with-openssl-dir=$(brew --prefix openssl@3)"

# Android CLI for Mac
# export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# Google Chrome Dev
# export CHROME_EXECUTABLE="/Applications/Google Chrome Dev.app/Contents/MacOS/Google Chrome Dev"

################################################################################
# 以下は WSL2 特有の設定
################################################################################
# alias vscode="/mnt/c/Users/USERNAME/AppData/Local/Programs/Microsoft\ VS\ Code\ Insiders/Code\ -\ Insiders.exe"
# alias mpc="/mnt/d/Program\ Files/MPC-BE/mpc-be64.exe"

# WSLg で日本語キーボードにする
# 現在の設定を確認するコマンドは setxkbmap -print -verbose 10
# setxkbmap -layout jp

# Mozc
# https://astherier.com/blog/2021/07/windows11-wsl2-wslg-japanese/
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
# export DefaultIMModule=fcitx

# Windows Explorer
# alias expl="explorer.exe ."

# # Tailscale for WSL2
# # WSL2 だと Tailscale が自動起動しないのでシェル起動時に無理やり起動する
# # https://github.com/tailscale/tailscale/issues/562#issuecomment-1017392542
# # Starting Tailscale daemon automatically if not running...
# TAILSCALED_PROCESS=`ps aux | grep tailscaled | grep -v grep`
# AUTH_KEY=YOUR_AUTH_KEY
# if [ -z "$TAILSCALED_PROCESS" ]; then
#   # sudo tailscaled > /dev/null 2>&1 &
#   # disown
#   echo "Tailscale を起動します。(.zshrc.userown.zshrc)"
#   sudo /bin/nohup /usr/sbin/tailscaled > /dev/null 2>&1 &
#   sleep 5
#   sudo /bin/tailscale up --ssh --authkey $YOUR_AUTH_KEY
#   echo "Tailscale を起動しました。(.zshrc.userown.zshrc)"
# else
#   echo "Tailscale はすでに起動しています。(.zshrc.userown.zshrc)"
# fi

# # cron for WSL2
# CRON_STATUS=$(sudo service cron status)
# # "cron is not running" を含むかどうかを確認
# if [[ $CRON_STATUS =~ "cron is not running" ]]; then
#   echo "cron のサービスを起動（再起動）します。(.zshrc.userown.zshrc)"
#   sudo service cron restart
#   echo "cron のサービスを起動（再起動）しました。(.zshrc.userown.zshrc)"
# else
#   echo "cron のサービスはすでに起動されています。(.zshrc.userown.zshrc)"
# fi
