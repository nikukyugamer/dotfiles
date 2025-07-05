# --------------------------------------------------------------------------------
# WSL 2（切り出してもいいかも）
# --------------------------------------------------------------------------------
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
#   echo "Tailscale を起動します。"
#   sudo /bin/nohup /usr/sbin/tailscaled > /dev/null 2>&1 &
#   sleep 5
#   sudo /bin/tailscale up --ssh --authkey $YOUR_AUTH_KEY
#   echo "Tailscale を起動しました。"
# else
#   echo "Tailscale はすでに起動しています。"
# fi

# # cron for WSL2
# CRON_STATUS=$(sudo service cron status)
# # "cron is not running" を含むかどうかを確認
# if [[ $CRON_STATUS =~ "cron is not running" ]]; then
#   echo "cron のサービスを起動（再起動）します。"
#   sudo service cron restart
#   echo "cron のサービスを起動（再起動）しました。"
# else
#   echo "cron のサービスはすでに起動されています。"
# fi
