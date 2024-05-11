# ユーザごとに独自に設定したい内容を記述する
# alias vscode="/mnt/c/Users/USERNAME/AppData/Local/Programs/Microsoft\ VS\ Code\ Insiders/Code\ -\ Insiders.exe"
# alias berspec="bundle exec rspec --format documentation"
# alias mpc="/mnt/d/Program\ Files/MPC-BE/mpc-be64.exe"

# ソースからビルドした最新の git
# PATH=$HOME/bin/latest_git/bin:$PATH

# Mozc
# https://astherier.com/blog/2021/07/windows11-wsl2-wslg-japanese/
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
# export DefaultIMModule=fcitx

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

# Flutter (Use fvm)
export FLUTTER_HOME=$HOME/fvm/default
export PATH=$PATH:$FLUTTER_HOME/bin
# export CHROME_EXECUTABLE="/Applications/Google Chrome Dev.app/Contents/MacOS/Google Chrome Dev"

# Windows Explorer
alias expl="explorer.exe ."

# 1Password CLI
export ONE_PASSWORD_MY_PASSWORD=op://Personal/jjztc5so2hlsskzuhzu2toh3cu/password

# WSLg で日本語キーボードにする
# 現在の設定を確認するコマンドは setxkbmap -print -verbose 10
# setxkbmap -layout jp

# sudo でエイリアスが使えるようにする（sudo vim で neovim になるようにする）
# https://qiita.com/homoluctus/items/ba1a6d03df85e65fc85a
# alias sudo="sudo "

# Mac で rbenv を直接インストールする場合に必要
# これがないと rbenv install だけでなく fastlane で SSL に失敗したりもする
# export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
# export RUBY_CONFIGURE_OPTS="--disable-shared --with-openssl-dir=$(brew --prefix openssl@3)"

# Android CLI for Mac
# export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# # Tailscale for WSL2
# # WSL2 だと Tailscale が自動起動しないのでシェル起動時に無理やり起動する
# # https://github.com/tailscale/tailscale/issues/562#issuecomment-1017392542
# # Starting Tailscale daemon automatically if not running...
# TAILSCALED_PROCESS=`ps aux | grep tailscaled | grep -v grep`
# if [ -z "$TAILSCALED_PROCESS" ]; then
#   # sudo tailscaled > /dev/null 2>&1 &
#   # disown
#   echo "Tailscale を起動します。(.zshrc.userown.zshrc)"
#   sudo /bin/nohup /usr/sbin/tailscaled > /dev/null 2>&1 &
#   sleep 5
#   sudo /bin/tailscale up --ssh --authkey tskey-auth-kunrv61P5111CNTRL-yRdvT3VBo3b6dayZ3tHA1bEauJX2rige
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
