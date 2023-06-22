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
